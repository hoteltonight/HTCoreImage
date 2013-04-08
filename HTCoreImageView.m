//
//  HTCoreImageView.m
//  HotelTonight
//
//  Created by Jacob Jennings on 12/18/12.
//  Copyright (c) 2013 HotelTonight
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "HTCoreImageView.h"
#import <CoreImage/CoreImage.h>
#import "UIImage+HTSave.h"

@interface HTCoreImageView ()

@property (nonatomic, strong) CIContext *coreImageContext;
@property (nonatomic, strong) UIImage *originalImage;

@end

@implementation HTCoreImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _saveBeforeAfterToDocs = NO;
        _processOnBackgroundThread = YES;
    }
    return self;
}

- (void)setImage:(UIImage *)image
{
    [self setImage:image complete:nil];
}

- (void)setImage:(UIImage *)image complete:(HTCIVoidBlock)complete;
{
    self.originalImage = image;
    if (!self.imageFilter)
    {
        [super setImage:image];
        return;
    }
    if (!self.coreImageContext)
    {
        self.coreImageContext = [CIContext contextWithOptions:@{ kCIContextUseSoftwareRenderer : (id)kCFBooleanFalse }];
    }
    if (self.saveBeforeAfterToDocs)
    {
        [image saveToDocumentDirectoryWithFileNamePrefix:@"Before"];
    }
    
    HTCIVoidBlock finishBlock = ^{
        CIImage *ciImage = [CIImage imageWithCGImage:image.CGImage];
        
        for (CIFilter *filter in self.imageFilters)
        {
            [filter setValue:ciImage forKey:kCIInputImageKey];
            ciImage = [filter valueForKey:kCIOutputImageKey];
        }
        
        CGImageRef resultCGImage = [self.coreImageContext createCGImage:ciImage fromRect:[ciImage extent]];
        UIImage *resultUIImage = [UIImage imageWithCGImage:resultCGImage scale:[[UIScreen mainScreen] scale] orientation:self.image.imageOrientation];
        CGImageRelease(resultCGImage);
        
        for (CIFilter *filter in self.imageFilters)
        {
            [filter setValue:nil forKey:kCIInputImageKey];
        }

        dispatch_async(dispatch_get_main_queue(), ^{
            [super setImage:resultUIImage];
            if (complete) complete();
        });
        
        if (self.saveBeforeAfterToDocs)
        {
            [resultUIImage saveToDocumentDirectoryWithFileNamePrefix:@"After"];
        }

    };
    if (self.processOnBackgroundThread)
    {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), finishBlock);
    }
    else
    {
        finishBlock();
    }
}

- (void)setImageFilter:(CIFilter *)imageFilter
{
    [self setImageFilters:@[imageFilter]];
}

- (void)setImageFilters:(NSArray *)imageFilters
{
    [self setImageFilters:imageFilters complete:nil];
}

- (void)setImageFilters:(NSArray *)imageFilters complete:(HTCIVoidBlock)complete;
{
    [self willChangeValueForKey:@"imageFilters"];
    _imageFilters = imageFilters;
    [self didChangeValueForKey:@"imageFilters"];

    [self willChangeValueForKey:@"imageFilter"];
    _imageFilter = imageFilters[0];
    [self didChangeValueForKey:@"imageFilter"];

    if (self.originalImage)
    {
        [self setImage:self.originalImage complete:complete];
    }
}

@end

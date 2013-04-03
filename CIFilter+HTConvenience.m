//
//  CIFilter+HTConvenience.m
//  HotelTonight
//
//  Created by Jacob Jennings on 12/19/12.
//  Copyright (c) 2013 HotelTonight
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "CIFilter+HTConvenience.h"

@implementation CIFilter (HTConvenience)

+ (NSArray *)supportedFilterNames
{
    NSArray *supportedFilters = [CIFilter filterNamesInCategory:kCICategoryBuiltIn];
    return supportedFilters;
}

+ (CIFilter *)filterLanczosWithScale:(CGFloat)scale;
{
    CIFilter *lanczosFilter = [CIFilter filterWithName:@"CILanczosScaleTransform"];
    [lanczosFilter setValue:@(scale) forKey:@"inputScale"];
    return lanczosFilter;
}

+ (CIFilter *)filterCropWithRect:(CGRect)rect;
{
    CIFilter *cropFilter = [CIFilter filterWithName:@"CICrop"];
    [cropFilter setValue:[CIVector vectorWithCGRect:rect] forKey:@"inputRectangle"];
    return cropFilter;
}


+ (CIFilter *)filterSourceOverCompositingWithBackgroundImage:(CIImage *)backgroundImage;
{
    CIFilter *sourceOverCompositingFilter = [CIFilter filterWithName:@"CISourceOverCompositing"];
    [sourceOverCompositingFilter setDefaults];
    [sourceOverCompositingFilter setValue:backgroundImage forKey:@"inputBackgroundImage"];
    return sourceOverCompositingFilter;
}

+ (CIFilter *)filterWithAffineTransform:(CGAffineTransform)transform;
{
    CIFilter *affineTransformFilter = [CIFilter filterWithName:@"CIAffineTransform"];
    [affineTransformFilter setDefaults];
    [affineTransformFilter setValue:[NSValue valueWithBytes:&transform
                                                   objCType:@encode(CGAffineTransform)]
                             forKey:@"inputTransform"];
    return affineTransformFilter;
}

+ (CIFilter *)filterWithBestAvailableScalingMethod:(CGFloat)scale
{
    CIFilter *scalingFilter = [CIFilter filterLanczosWithScale:scale];
    if (!scalingFilter)
    {
        scalingFilter = [CIFilter filterWithAffineTransform:CGAffineTransformMakeScale(scale, scale)];
    }
    return scalingFilter;
}


- (void)setInputCIImage:(CIImage *)ciImage;
{
    [self setValue:ciImage forKey:kCIInputImageKey];
}

- (void)setInputCGImage:(CGImageRef)cgImage;
{
    [self setValue:[CIImage imageWithCGImage:cgImage] forKey:kCIInputImageKey];
}

- (void)setInputUIImage:(UIImage *)uiImage;
{
    [self setValue:[CIImage imageWithCGImage:uiImage.CGImage] forKey:kCIInputImageKey];
}

- (CIImage *)outputImage;
{
    return [self valueForKey:kCIOutputImageKey];
}

@end

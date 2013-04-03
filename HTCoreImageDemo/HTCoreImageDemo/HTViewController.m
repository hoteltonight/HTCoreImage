//
//  HTViewController.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "HTViewController.h"
#import "HTCoreImage.h"
#import "CIFilter+HTCICategoryColorAdjustment.h"

@interface HTViewController ()

@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    
    UIImage *sourceUIImage = [UIImage imageNamed:@"asdf"];
    
    
    
    // Native application of color controls (increase contrast) + color matrix alpha (blueify)
    
    CIImage *sourceCIImage = [CIImage imageWithCGImage:sourceUIImage.CGImage];

    CIFilter *colorControlsFilter = [CIFilter filterWithName:@"CIColorControls"];
    [colorControlsFilter setDefaults];
    [colorControlsFilter setValue:@(1) forKey:@"inputSaturation"];
    [colorControlsFilter setValue:@(1) forKey:@"inputBrightness"];
    [colorControlsFilter setValue:@(2) forKey:@"inputContrast"];
    [colorControlsFilter setInputCIImage:sourceCIImage];
    
    CIFilter *colorMatrixFilter = [CIFilter filterWithName:@"CIColorMatrix"];
    [colorMatrixFilter setDefaults];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0.5 Y:0 Z:0 W:0]
                         forKey:@"inputRVector"];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:0.5 Z:0 W:0]
                         forKey:@"inputGVector"];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:0 Z:1 W:0]
                         forKey:@"inputBVector"];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:0 Z:0 W:1]
                         forKey:@"inputAVector"];
    [colorMatrixFilter setInputCIImage:[colorControlsFilter outputImage]];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^
                   {
                       CIContext *ciContext = [CIContext contextWithOptions:@{ kCIContextUseSoftwareRenderer : (id)kCFBooleanFalse }];
                       CGImageRef resultCGImage = [ciContext createCGImage:[colorMatrixFilter outputImage] fromRect:[[colorMatrixFilter outputImage] extent]];
                       UIImage *resultUIImage = [UIImage imageWithCGImage:resultCGImage scale:sourceUIImage.scale orientation:sourceUIImage.imageOrientation];
                       CGImageRelease(resultCGImage);
                       dispatch_async(dispatch_get_main_queue(), ^
                                      {
                                          NSLog(@"%@", resultUIImage);
                                      });
                   });
    
    
    
    // Same application using convenience categories in HTCoreImage
    
    [[[sourceUIImage toCIImage] imageByApplyingFilters:@[
      [CIFilter filterColorControlsSaturation:1 brightness:1 contrast:1],
      [CIFilter filterColorMatrixWithRed:0.5 green:0.5 blue:1 alpha:1]]]
     processToUIImageCompletion:^(UIImage *uiImage) {
        NSLog(@"%@", uiImage);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  CIFilter+HTCICategoryHalftoneEffect.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryHalftoneEffect.h"

@implementation CIFilter (HTCICategoryHalftoneEffect)

+ (CIFilter *)filterCircularScreenWithCenter:(CGPoint)center width:(CGFloat)width sharpness:(CGFloat)sharpness
{
    CIFilter *filter = [CIFilter filterWithName:@"CICircularScreen"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

+ (CIFilter *)filterDotScreenWithCenter:(CGPoint)center
                                  angle:(CGFloat)angle
                                  width:(CGFloat)width
                              sharpness:(CGFloat)sharpness;
{
    CIFilter *filter = [CIFilter filterWithName:@"CIDotScreen"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

+ (CIFilter *)filterHatchedScreenWithCenter:(CGPoint)center
                                      angle:(CGFloat)angle
                                      width:(CGFloat)width
                                  sharpness:(CGFloat)sharpness
{
    CIFilter *filter = [CIFilter filterWithName:@"CIHatchedScreen"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

+ (CIFilter *)filterLineScreenWithCenter:(CGPoint)center
                                   angle:(CGFloat)angle
                                   width:(CGFloat)width
                               sharpness:(CGFloat)sharpness
{
    CIFilter *filter = [CIFilter filterWithName:@"CILineScreen"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

@end

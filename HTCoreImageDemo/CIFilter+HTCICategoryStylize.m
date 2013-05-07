//
//  CIFilter+HTCICategoryStylize.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryStylize.h"

@implementation CIFilter (HTCICategoryStylize)

+ (CIFilter *)filterBlendWithMaskWithBackgroundImage:(CIImage *)backgroundImage maskImage:(CIImage *)maskImage
{
    CIFilter *filter = [CIFilter filterWithName:@"CIBlendWithMask"];
    [filter setDefaults];
    [filter setValue:backgroundImage forKey:@"inputBackgroundImage"];
    [filter setValue:maskImage forKey:@"inputMaskImage"];
    return filter;
}

+ (CIFilter *)filterBloomWithRadius:(CGFloat)radius intensity:(CGFloat)intensity
{
    CIFilter *filter = [CIFilter filterWithName:@"CIBloom"];
    [filter setDefaults];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    [filter setValue:@(intensity) forKey:@"inputIntensity"];
    return filter;
}

+ (CIFilter *)filterGloomWithRadius:(CGFloat)radius intensity:(CGFloat)intensity
{
    CIFilter *filter = [CIFilter filterWithName:@"CIGloom"];
    [filter setDefaults];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    [filter setValue:@(intensity) forKey:@"inputIntensity"];
    return filter;
}

+ (CIFilter *)filterHighlightShadowAdjustWithHighlightAmount:(CGFloat)highlightAmount shadowAmount:(CGFloat)shadowAmount
{
    CIFilter *filter = [CIFilter filterWithName:@"CIHighlightShadowAdjust"];
    [filter setDefaults];
    [filter setValue:@(highlightAmount) forKey:@"inputHighlightAmount"];
    [filter setValue:@(shadowAmount) forKey:@"inputShadowAmount"];
    return filter;
}

+ (CIFilter *)filterPixellateWithCenter:(CGPoint)center scale:(CGFloat)scale
{
    CIFilter *filter = [CIFilter filterWithName:@"CIPixellate"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(scale) forKey:@"inputScale"];
    return filter;
}


@end

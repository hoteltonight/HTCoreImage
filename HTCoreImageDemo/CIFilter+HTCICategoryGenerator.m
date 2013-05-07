//
//  CIFilter+HTCICategoryGenerator.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryGenerator.h"

@implementation CIFilter (HTCICategoryGenerator)

+ (CIFilter *)filterCheckerboardGeneratorWithCenter:(CGPoint)center
                                             color0:(UIColor *)color0
                                             color1:(UIColor *)color1
                                              width:(CGFloat)width
                                          sharpness:(CGFloat)sharpness
{
    CIFilter *filter = [CIFilter filterWithName:@"CICheckerboardGenerator"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:[CIColor colorWithCGColor:color0.CGColor] forKey:@"inputColor0"];
    [filter setValue:[CIColor colorWithCGColor:color1.CGColor] forKey:@"inputColor1"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

+ (CIFilter *)filterConstantColorGeneratorWithColor:(UIColor *)color
{
    CIFilter *filter = [CIFilter filterWithName:@"CICheckerboardGenerator"];
    [filter setDefaults];
    [filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor"];
    return filter;
}

+ (CIFilter *)filterRandomGenerator
{
    CIFilter *filter = [CIFilter filterWithName:@"CIRandomGenerator"];
    [filter setDefaults];
    return filter;
}

+ (CIFilter *)filterStarShineGeneratorWithCenter:(CGPoint)center
                                           color:(UIColor *)color
                                          radius:(CGFloat)radius
                                      crossScale:(CGFloat)crossScale
                                      crossAngle:(CGFloat)crossAngle
                                    crossOpacity:(CGFloat)crossOpacity
                                      crossWidth:(CGFloat)crossWidth
                                         epsilon:(CGFloat)epsilon
{
    CIFilter *filter = [CIFilter filterWithName:@"CIStarShineGenerator"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    [filter setValue:@(crossScale) forKey:@"inputCrossScale"];
    [filter setValue:@(crossAngle) forKey:@"inputCrossAngle"];
    [filter setValue:@(crossOpacity) forKey:@"inputCrossOpacity"];
    [filter setValue:@(crossWidth) forKey:@"inputCrossWidth"];
    [filter setValue:@(epsilon) forKey:@"inputEpsilon"];
    return filter;
}

+ (CIFilter *)filterStripesGeneratorWithCenter:(CGPoint)center
                                        color0:(UIColor *)color0
                                        color1:(UIColor *)color1
                                         width:(CGFloat)width
                                     sharpness:(CGFloat)sharpness
{
    CIFilter *filter = [CIFilter filterWithName:@"CICheckerboardGenerator"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:[CIColor colorWithCGColor:color0.CGColor] forKey:@"inputColor0"];
    [filter setValue:[CIColor colorWithCGColor:color1.CGColor] forKey:@"inputColor1"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

@end

//
//  CIFilter+HTCICategoryGradient.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryGradient.h"

@implementation CIFilter (HTCICategoryGradient)

+ (CIFilter *)filterGaussianGradientWithCenter:(CGPoint)center
                                        color0:(UIColor *)color0
                                        color1:(UIColor *)color1
                                        radius:(CGFloat)radius
{
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianGradient"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:[CIColor colorWithCGColor:color0.CGColor] forKey:@"inputColor0"];
    [filter setValue:[CIColor colorWithCGColor:color1.CGColor] forKey:@"inputColor1"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    return filter;
}

+ (CIFilter *)filterLinearGradientWithPoint0:(CGPoint)point0
                                      point1:(CGPoint)point1
                                      color0:(UIColor *)color0
                                      color1:(UIColor *)color1
{
    CIFilter *filter = [CIFilter filterWithName:@"CILinearGradient"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:point0] forKey:@"inputPoint0"];
    [filter setValue:[CIVector vectorWithCGPoint:point0] forKey:@"inputPoint1"];
    [filter setValue:[CIColor colorWithCGColor:color0.CGColor] forKey:@"inputColor0"];
    [filter setValue:[CIColor colorWithCGColor:color1.CGColor] forKey:@"inputColor1"];
    return filter;
}

@end

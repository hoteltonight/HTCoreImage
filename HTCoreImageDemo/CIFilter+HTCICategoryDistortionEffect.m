//
//  CIFilter+HTCICategoryDistortionEffect.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryDistortionEffect.h"

@implementation CIFilter (HTCICategoryDistortionEffect)

+ (CIFilter *)filterCircleSplashDistortionWithCenter:(CGPoint)center radius:(CGFloat)radius
{
    CIFilter *filter = [CIFilter filterWithName:@"CICircleSplashDistortion"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    return filter;
}

+ (CIFilter *)filterHoleDistortionWithCenter:(CGPoint)center radius:(CGFloat)radius
{
    CIFilter *filter = [CIFilter filterWithName:@"CIHoleDistortion"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    return filter;
}

+ (CIFilter *)filterLightTunnelWithCenter:(CGPoint)center
                                 rotation:(CGFloat)rotation
                                   radius:(CGFloat)radius
{
    CIFilter *filter = [CIFilter filterWithName:@"CILightTunnel"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(rotation) forKey:@"inputRotation"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    return filter;
}

+ (CIFilter *)filterPinchDistortionWithCenter:(CGPoint)center
                                       radius:(CGFloat)radius
                                        scale:(CGFloat)scale
{
    CIFilter *filter = [CIFilter filterWithName:@"CIPinchDistortion"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    [filter setValue:@(scale) forKey:@"inputScale"];
    return filter;
}

+ (CIFilter *)filterTwirlDistortionWithCenter:(CGPoint)center radius:(CGFloat)radius angle:(CGFloat)angle
{
    CIFilter *filter = [CIFilter filterWithName:@"CITwirlDistortion"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(radius) forKey:@"inputRadius"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    return filter;
}

+ (CIFilter *)filterCropWithRect:(CGRect)rect;
{
    CIFilter *cropFilter = [CIFilter filterWithName:@"CICrop"];
    [cropFilter setValue:[CIVector vectorWithCGRect:rect] forKey:@"inputRectangle"];
    return cropFilter;
}

@end

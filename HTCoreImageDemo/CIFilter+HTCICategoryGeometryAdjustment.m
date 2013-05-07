//
//  CIFilter+HTCICategoryGeometryAdjustment.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryGeometryAdjustment.h"

@implementation CIFilter (HTCICategoryGeometryAdjustment)

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

+ (CIFilter *)filterLanczosWithScale:(CGFloat)scale;
{
    CIFilter *lanczosFilter = [CIFilter filterWithName:@"CILanczosScaleTransform"];
    [lanczosFilter setDefaults];
    [lanczosFilter setValue:@(scale) forKey:@"inputScale"];
    return lanczosFilter;
}

+ (CIFilter *)filterPerspectiveTransformWithTopLeft:(CGPoint)topLeft
                                           topRight:(CGPoint)topRight
                                        bottomRight:(CGPoint)bottomRight
                                         bottomLeft:(CGPoint)bottomLeft
{
    CIFilter *filter = [CIFilter filterWithName:@"CIPerspectiveTransform"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:topLeft] forKey:@"inputTopLeft"];
    [filter setValue:[CIVector vectorWithCGPoint:topRight] forKey:@"inputTopRight"];
    [filter setValue:[CIVector vectorWithCGPoint:bottomRight] forKey:@"inputBottomRight"];
    [filter setValue:[CIVector vectorWithCGPoint:bottomLeft] forKey:@"inputBottomLeft"];
    return filter;
}

+ (CIFilter *)filterPerspectiveTransformWithExtent:(CIVector *)extent
                                           topLeft:(CGPoint)topLeft
                                          topRight:(CGPoint)topRight
                                       bottomRight:(CGPoint)bottomRight
                                        bottomLeft:(CGPoint)bottomLeft
{
    CIFilter *filter = [CIFilter filterWithName:@"CIPerspectiveTransformWithExtent"];
    [filter setDefaults];
    [filter setValue:extent forKey:@"inputExtent"];
    [filter setValue:[CIVector vectorWithCGPoint:topLeft] forKey:@"inputTopLeft"];
    [filter setValue:[CIVector vectorWithCGPoint:topRight] forKey:@"inputTopRight"];
    [filter setValue:[CIVector vectorWithCGPoint:bottomRight] forKey:@"inputBottomRight"];
    [filter setValue:[CIVector vectorWithCGPoint:bottomLeft] forKey:@"inputBottomLeft"];
    return filter;
}

+ (CIFilter *)filterStraightenFilterWithAngle:(CGFloat)angle
{
    CIFilter *filter = [CIFilter filterWithName:@"CIStraightenFilter"];
    [filter setDefaults];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    return filter;
}


@end

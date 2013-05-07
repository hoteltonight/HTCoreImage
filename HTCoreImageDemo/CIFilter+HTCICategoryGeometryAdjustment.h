//
//  CIFilter+HTCICategoryGeometryAdjustment.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryGeometryAdjustment)

+ (CIFilter *)filterWithAffineTransform:(CGAffineTransform)transform NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterWithBestAvailableScalingMethod:(CGFloat)scale NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterLanczosWithScale:(CGFloat)scale NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterPerspectiveTransformWithTopLeft:(CGPoint)topLeft
                                           topRight:(CGPoint)topRight
                                        bottomRight:(CGPoint)bottomRight
                                         bottomLeft:(CGPoint)bottomLeft NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterPerspectiveTransformWithExtent:(CIVector *)extent
                                           topLeft:(CGPoint)topLeft
                                           topRight:(CGPoint)topRight
                                        bottomRight:(CGPoint)bottomRight
                                         bottomLeft:(CGPoint)bottomLeft NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterStraightenFilterWithAngle:(CGFloat)angle NS_AVAILABLE_IOS(5_0); // default 0



@end

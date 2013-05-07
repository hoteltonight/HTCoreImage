//
//  CIFilter+HTCICategoryGradient.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryGradient)

+ (CIFilter *)filterGaussianGradientWithCenter:(CGPoint)center
                                        color0:(UIColor *)color0
                                        color1:(UIColor *)color1
                                        radius:(CGFloat)radius NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterLinearGradientWithPoint0:(CGPoint)point0
                                      point1:(CGPoint)point1
                                      color0:(UIColor *)color0
                                      color1:(UIColor *)color1 NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterRadialGradientWithCenter:(CGPoint)center
                                     radius0:(CGFloat)radius0
                                     radius1:(CGFloat)radius1
                                      color0:(UIColor *)color0
                                      color1:(UIColor *)color1 NS_AVAILABLE_IOS(6_0);

@end

//
//  CIFilter+HTCICategoryDistortionEffect.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryDistortionEffect)

// OSX only:
// CIBumpDistortionFilter
// CIBumpDistortionFilterLinear
// CICircularWrap
// CIDroste
// CIDisplacementDistortion
// CIGlassDistortion
// CIStretchCrop
// CITorusLensDistortion

+ (CIFilter *)filterCircleSplashDistortionWithCenter:(CGPoint)center
                                              radius:(CGFloat)radius NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterHoleDistortionWithCenter:(CGPoint)center radius:(CGFloat)radius NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterLightTunnelWithCenter:(CGPoint)center
                                 rotation:(CGFloat)rotation
                                   radius:(CGFloat)radius NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterPinchDistortionWithCenter:(CGPoint)center
                                       radius:(CGFloat)radius
                                        scale:(CGFloat)scale NS_AVAILABLE_IOS(6_0); // default 0.5

+ (CIFilter *)filterTwirlDistortionWithCenter:(CGPoint)center
                                       radius:(CGFloat)radius
                                        angle:(CGFloat)angle NS_AVAILABLE_IOS(6_0); // default: π

+ (CIFilter *)filterCropWithRect:(CGRect)rect NS_AVAILABLE_IOS(5_0);



@end

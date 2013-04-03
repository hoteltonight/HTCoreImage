//
//  CIFilter+HTCICategoryCompositeOperation.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryCompositeOperation)

+ (CIFilter *)filterAdditionCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterColorBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterColorBurnBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterColorDodgeBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterDarkenBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterDifferenceBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterExclusionBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterHardLightBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterHueBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterLightenBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterLuminosityBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMaximumCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMinimumCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMultiplyBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMultiplyCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterOverlayBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSaturationBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterScreenBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSoftLightBlendModeWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSourceAtopCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSourceInCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSourceOutCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSourceOverCompositingWithBackgroundImage:(CIImage *)backgroundImage NS_AVAILABLE_IOS(5_0);

@end

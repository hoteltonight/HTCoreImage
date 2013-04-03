//
//  CIFilter+HTCICategoryColorAdjustment.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryColorAdjustment)

+ (CIFilter *)filterColorControlsSaturation:(CGFloat)saturation
                                 brightness:(CGFloat)brightness
                                   contrast:(CGFloat)contrast NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterColorMatrixWithAlpha:(CGFloat)alpha NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterColorMatrixWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterExposureAdjustWithInputEV:(CGFloat)inputEV NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterGammaAdjustWithInputPower:(CGFloat)inputPower NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterHueAdjustWithInputAngle:(CGFloat)inputAngle NS_AVAILABLE_IOS(5_0);

// Defaults: [6500, 0] and [6500, 0]
+ (CIFilter *)filterTemperatureAndTintWithNeutral:(CGPoint)neutral targetNeutral:(CGPoint)targetNeutral NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterToneCurveWithControlPoint0:(CGPoint)point0 point1:(CGPoint)point1 point2:(CGPoint)point2 point3:(CGPoint)point3 NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterVibranceWithInputAmount:(CGFloat)inputAmount NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterWhitePointAdjustWithInputColor:(UIColor *)inputColor NS_AVAILABLE_IOS(5_0);

@end

//
//  CIFilter+HTCICategoryColorEffect.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryColorEffect)

+ (CIFilter *)filterColorCubeWithDimension:(NSUInteger)dimension cubeData:(NSData *)cubeData NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterColorInvert NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterColorMapWithGradientImage:(CIImage *)gradientImage NS_AVAILABLE_IOS(6_0);

// intensity default = 1.00
+ (CIFilter *)filterColorMonochromeWithColor:(UIColor *)color intensity:(CGFloat)intensity NS_AVAILABLE_IOS(6_0);

// levels default = 6.00
+ (CIFilter *)filterPosterizeWithLevels:(CGFloat)levels NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterFalseColorWithColor0:(UIColor *)color0 color1:(UIColor *)color1 NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMaskToAlpha NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMaximumComponent NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterMinimumComponent NS_AVAILABLE_IOS(6_0);

// intensity default = 1.00
+ (CIFilter *)filterSepiaToneWithIntensity:(CGFloat)intensity NS_AVAILABLE_IOS(5_0);

// radius default = 1, intensity = 0
+ (CIFilter *)filterVignetteWithRadius:(CGFloat)radius intensity:(CGFloat)intensity NS_AVAILABLE_IOS(5_0);

@end

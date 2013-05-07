//
//  CIFilter+HTCICategoryGenerator.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryGenerator)

// OSX oly:
// CILenticularHaloGenerator
// CISunbeamsGenerator

+ (CIFilter *)filterCheckerboardGeneratorWithCenter:(CGPoint)center
                                             color0:(UIColor *)color0
                                             color1:(UIColor *)color1
                                              width:(CGFloat)width
                                          sharpness:(CGFloat)sharpness NS_AVAILABLE_IOS(6_0); // default 1.0

+ (CIFilter *)filterConstantColorGeneratorWithColor:(UIColor *)color NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterRandomGenerator NS_AVAILABLE_IOS(6_0); // white noise

+ (CIFilter *)filterStarShineGeneratorWithCenter:(CGPoint)center        // default: 150,150
                                           color:(UIColor *)color
                                          radius:(CGFloat)radius        // 50
                                      crossScale:(CGFloat)crossScale    // 15
                                      crossAngle:(CGFloat)crossAngle    // 0.6
                                    crossOpacity:(CGFloat)crossOpacity  // -2
                                      crossWidth:(CGFloat)crossWidth    // 2.5
                                         epsilon:(CGFloat)epsilon       // -2
                                                 NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterStripesGeneratorWithCenter:(CGPoint)center
                                        color0:(UIColor *)color0
                                        color1:(UIColor *)color1
                                         width:(CGFloat)width
                                     sharpness:(CGFloat)sharpness // default: 1.0
                                               NS_AVAILABLE_IOS(6_0);

@end

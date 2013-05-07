//
//  CIFilter+HTCICategoryTileEffect.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryTileEffect)

// osx only
// CIKaleidoscope
// CIOpTile
// CIParallelogramTile


+ (CIFilter *)filterAffineClampWithTransform:(CGAffineTransform)transform NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterAffineTileWithTransform:(CGAffineTransform)transform NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterEightfoldReflectedTileWithCenter:(CGPoint)center
                                               angle:(CGFloat)angle
                                               width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterFourfoldReflectedTileWithCenter:(CGPoint)center
                                              angle:(CGFloat)angle // 0 default
                                         acuteAngle:(CGFloat)acuteAngle // π / 2
                                              width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterFourfoldRotatedTileWithCenter:(CGPoint)center
                                            angle:(CGFloat)angle  // default 0
                                            width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterFourfoldTranslatedTileWithCenter:(CGPoint)center
                                               angle:(CGFloat)angle // default 0
                                          acuteAngle:(CGFloat)acuteAngle // default π / 2
                                               width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterGlideReflectedTileWithCenter:(CGPoint)center
                                           angle:(CGFloat)angle  // default 0
                                           width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterPerspectiveTileWithTopLeft:(CGPoint)topLeft
                                      topRight:(CGPoint)topRight
                                   bottomRight:(CGPoint)bottomRight
                                    bottomLeft:(CGPoint)bottomLeft NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSixfoldReflectedTileWithCenter:(CGPoint)center
                                             angle:(CGFloat)angle
                                             width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterSixfoldRotatedTileWithCenter:(CGPoint)center
                                           angle:(CGFloat)angle
                                           width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterTriangleKaleidoscopeWithPoint:(CGPoint)point // 150,150
                                             size:(CGFloat)size // 700
                                         rotation:(CGFloat)rotation // -0.36
                                            decay:(CGFloat)decay // 0.85
                                                    NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterTriangleTileWithCenter:(CGPoint)center
                                     angle:(CGFloat)angle
                                     width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)twelvefoldReflectedTileWithCenter:(CGPoint)center
                                          angle:(CGFloat)angle
                                          width:(CGFloat)width NS_AVAILABLE_IOS(6_0);

@end

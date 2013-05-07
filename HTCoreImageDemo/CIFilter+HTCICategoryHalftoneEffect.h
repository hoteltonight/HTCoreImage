//
//  CIFilter+HTCICategoryHalftoneEffect.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

// CICMYKHalftone

@interface CIFilter (HTCICategoryHalftoneEffect)

+ (CIFilter *)filterCircularScreenWithCenter:(CGPoint)center
                                       width:(CGFloat)width
                                   sharpness:(CGFloat)sharpness // default 0.7
                                             NS_AVAILABLE_IOS(6_0);
+ (CIFilter *)filterDotScreenWithCenter:(CGPoint)center
                                  angle:(CGFloat)angle
                                  width:(CGFloat)width
                              sharpness:(CGFloat)sharpness // default 0.7
                                        NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterHatchedScreenWithCenter:(CGPoint)center
                                      angle:(CGFloat)angle
                                      width:(CGFloat)width
                                  sharpness:(CGFloat)sharpness // default 0.7
                                            NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterLineScreenWithCenter:(CGPoint)center
                                   angle:(CGFloat)angle
                                   width:(CGFloat)width
                               sharpness:(CGFloat)sharpness // default 0.7
                                         NS_AVAILABLE_IOS(6_0);


@end

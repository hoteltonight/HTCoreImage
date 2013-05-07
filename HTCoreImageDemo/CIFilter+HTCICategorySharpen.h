//
//  CIFilter+HTCICategorySharpen.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategorySharpen)

+ (CIFilter *)filterSharpenLuminanceWithSharpness:(CGFloat)sharpness NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterUnsharpMaskWithRadius:(CGFloat)radius // 2.5 default
                                intensity:(CGFloat)intensity // 0.5
                                          NS_AVAILABLE_IOS(6_0);

@end

//
//  CIFilter+HTCICategoryBlur.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryBlur)

/* OSX only:
 CIBoxBlur
 CIDiscBlur
 CIMedianFilter
 CIMotionBlur
 CINoiseReduction
 CIZoomBlur
 */

+ (CIFilter *)filterGaussianBlurWithRadius:(CGFloat)radius NS_AVAILABLE_IOS(6_0);

@end

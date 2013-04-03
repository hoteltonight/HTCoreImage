//
//  CIFilter+HTCICategoryBlur.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryBlur.h"

@implementation CIFilter (HTCICategoryBlur)

+ (CIFilter *)filterGaussianBlurWithRadius:(CGFloat)radius
{
    CIFilter *gaussianBlurFilter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [gaussianBlurFilter setDefaults];
    [gaussianBlurFilter setValue:@(radius) forKey:@"inputRadius"];
    return gaussianBlurFilter;
}


@end

//
//  CIFilter+HTCICategorySharpen.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategorySharpen.h"

@implementation CIFilter (HTCICategorySharpen)

+ (CIFilter *)filterSharpenLuminanceWithSharpness:(CGFloat)sharpness
{
    CIFilter *filter = [CIFilter filterWithName:@"CISharpenLuminance"];
    [filter setDefaults];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

+ (CIFilter *)filterUnsharpMaskWithRadius:(CGFloat)radius intensity:(CGFloat)intensity
{
    CIFilter *filter = [CIFilter filterWithName:@"CISharpenLuminance"];
    [filter setDefaults];
    [filter setValue:@(sharpness) forKey:@"inputSharpness"];
    return filter;
}

@end

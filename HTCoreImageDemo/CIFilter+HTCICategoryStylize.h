//
//  CIFilter+HTCICategoryStylize.h
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTCICategoryStylize)

// osx only
// CIComicEffect
// CICrystallize
// CIDepthOfField
// CIEdges
// CIEdgeWork
// CIHeightFieldFromMask
// CIHexagonalPixellate
// CILineOverlay
// CIPointillize
// CIShadedMaterial
// CISpotColor
// CISpotLight

+ (CIFilter *)filterBlendWithMaskWithBackgroundImage:(CIImage *)backgroundImage
                                           maskImage:(CIImage *)maskImage NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterBloomWithRadius:(CGFloat)radius
                          intensity:(CGFloat)intensity // 1.0 default
                                    NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterGloomWithRadius:(CGFloat)radius
                          intensity:(CGFloat)intensity // 1.0 default
                                    NS_AVAILABLE_IOS(6_0);

+ (CIFilter *)filterHighlightShadowAdjustWithHighlightAmount:(CGFloat)highlightAmount // default 1.0
                                                shadowAmount:(CGFloat)shadowAmount NS_AVAILABLE_IOS(5_0);

+ (CIFilter *)filterPixellateWithCenter:(CGPoint)center
                                  scale:(CGFloat)scale // 8.0 default
                                        NS_AVAILABLE_IOS(6_0);

@end

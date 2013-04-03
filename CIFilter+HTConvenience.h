//
//  CIFilter+HTConvenience.h
//  HotelTonight
//
//  Created by Jacob Jennings on 12/19/12.
//  Copyright (c) 2013 HotelTonight
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (HTConvenience)

+ (NSArray *)supportedFilterNames;

- (void)setInputCIImage:(CIImage *)ciImage;
- (void)setInputCGImage:(CGImageRef)cgImage;
- (CIImage *)outputImage;

// Available since iOS 5

+ (CIFilter *)filterColorControlsSaturation:(CGFloat)saturation
                                 brightness:(CGFloat)brightness
                                   contrast:(CGFloat)contrast;

+ (CIFilter *)filterLanczosWithScale:(CGFloat)scale;

+ (CIFilter *)filterCropWithRect:(CGRect)rect;

+ (CIFilter *)filterColorMatrixWithAlpha:(CGFloat)alpha;

+ (CIFilter *)filterColorMatrixWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

+ (CIFilter *)filterSourceOverCompositingWithBackgroundImage:(CIImage *)backgroundImage;

+ (CIFilter *)filterWithAffineTransform:(CGAffineTransform)transform;

+ (CIFilter *)filterWithBestAvailableScalingMethod:(CGFloat)scale;

/*
 CIAdditionCompositing,
 CIAffineTransform,
 CICheckerboardGenerator,
 CIColorBlendMode,
 CIColorBurnBlendMode,
 CIColorControls,*
 CIColorCube,
 CIColorDodgeBlendMode,
 CIColorInvert,
 CIColorMatrix,
 CIColorMonochrome,
 CIConstantColorGenerator,
 CICrop,
 CIDarkenBlendMode,
 CIDifferenceBlendMode,
 CIExclusionBlendMode,
 CIExposureAdjust,
 CIFalseColor,
 CIGammaAdjust,
 CIGaussianGradient,
 CIHardLightBlendMode,
 CIHighlightShadowAdjust,
 CIHueAdjust,
 CIHueBlendMode,
 CILightenBlendMode,
 CILuminosityBlendMode,
 CIMaximumCompositing,
 CIMinimumCompositing,
 CIMultiplyBlendMode,
 CIMultiplyCompositing,
 CIOverlayBlendMode,
 CISaturationBlendMode,
 CIScreenBlendMode,
 CISepiaTone,
 CISoftLightBlendMode,
 CISourceAtopCompositing,
 CISourceInCompositing,
 CISourceOutCompositing,
 CISourceOverCompositing,
 CIStraightenFilter,
 CIStripesGenerator,
 CITemperatureAndTint,
 CIToneCurve,
 CIVibrance,
 CIVignette,
 CIWhitePointAdjust
 */

// Available since iOS 6

/*
 CIAffineClamp,
 CIAffineTile,
 CIBarsSwipeTransition,
 CIBlendWithMask,
 CIBloom,
 CIBumpDistortion,
 CIBumpDistortionLinear,
 CICircleSplashDistortion,
 CICircularScreen,
 CIColorMap,
 CIColorPosterize,
 CICopyMachineTransition,
 CIDisintegrateWithMaskTransition,
 CIDissolveTransition,
 CIDotScreen,
 CIEightfoldReflectedTile,
 CIFlashTransition,
 CIFourfoldReflectedTile,
 CIFourfoldRotatedTile,
 CIFourfoldTranslatedTile,
 CIGaussianBlur,
 CIGlideReflectedTile,
 CIGloom,
 CIHatchedScreen,
 CIHoleDistortion,
 CILanczosScaleTransform,
 CILightTunnel,
 CILineScreen,
 CILinearGradient,
 CIMaskToAlpha,
 CIMaximumComponent,
 CIMinimumComponent,
 CIModTransition,
 CIPinchDistortion,
 CIPixellate,
 CIRandomGenerator,
 CIRadialGradient,
 CISharpenLuminance,
 CISixfoldReflectedTile,
 CISixfoldRotatedTile,
 CISmoothLinearGradient,
 CIStarShineGenerator,
 CISwipeTransition,
 CITriangleKaleidoscope,
 CITwelvefoldReflectedTile,
 CITwirlDistortion,
 CIUnsharpMask,
 CIVortexDistortion,
 */

@end

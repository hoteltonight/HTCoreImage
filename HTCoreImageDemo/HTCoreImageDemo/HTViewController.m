//
//  HTViewController.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "HTViewController.h"
#import "HTCoreImage.h"
#import "CIFilter+HTCICategoryColorAdjustment.h"

@interface HTViewController ()

@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIImage *someImage = [UIImage imageNamed:@"asdf"];

    CIImage *filteredImage = [[someImage toCIImage] imageByApplyingFilters:@[
        [CIFilter filterColorControlsSaturation:1 brightness:1 contrast:1],
        [CIFilter filterColorMatrixWithAlpha:0.5]
    ]];

    [filteredImage processToUIImageCompletion:^(UIImage *uiImage)
    {
        NSLog(@"%@", uiImage);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

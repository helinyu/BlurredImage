//
//  LBViewController.m
//  Blur
//
//  Created by Luca Bernardi on 11/11/12.
//  Copyright (c) 2012 Luca Bernardi. All rights reserved.
//

#import "LBViewController.h"
#import "UIImageView+LBBlurredImage.h"

@interface LBViewController ()

@property (strong, nonatomic) UIImageView *imageView;


@end


@implementation LBViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
 
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    _imageView = [UIImageView new];
    _imageView.frame = self.view.bounds;
    [self.view addSubview:_imageView];
//    _imageView.image = [UIImage imageNamed:@"example.png"];
    [self.imageView setImageToBlur:[UIImage imageNamed:@"example"]
                        blurRadius:kLBBlurredImageDefaultBlurRadius
                   completionBlock:^(){
                       NSLog(@"The blurred image has been set");
                   }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

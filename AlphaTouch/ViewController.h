//
//  ViewController.h
//  AlphaTouch
//
//  Created by David Ladowitz on 2/8/14.
//  Copyright (c) 2014 David Ladowitz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (void)buttonPressed:(UIButton *)sender;

@property (weak, nonatomic) UIButton *greenButton;
@property (weak, nonatomic) UIButton *blueButton;

@end

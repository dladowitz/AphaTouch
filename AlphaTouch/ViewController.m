//
//  ViewController.m
//  AlphaTouch
//
//  Created by David Ladowitz on 2/8/14.
//  Copyright (c) 2014 David Ladowitz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"IM IN VIEWCONTROLLER");
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.greenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.greenButton.frame = CGRectMake(120, 200, 100, 44);
    [self.greenButton setTitle:@"Make green!" forState:UIControlStateNormal];
    [self.greenButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.greenButton];
    
    self.blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.blueButton.frame = CGRectMake(120, 100, 100, 44);
    [self.blueButton setTitle:@"Make blue!" forState:UIControlStateNormal];
    [self.blueButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blueButton];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button Pressed");
    if ([sender isEqual:self.blueButton])  {
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor greenColor];
    }
}

- (void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Began touching the screen");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Stopped touching the screen");
}

@end

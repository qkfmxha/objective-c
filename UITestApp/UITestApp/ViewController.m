//
//  ViewController.m
//  UITestApp
//
//  Created by T1 on 13. 1. 3..
//  Copyright (c) 2013년 T1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_helloTextLabel release];
    [_rainImageView release];
    [_kimImageView release];
    [super dealloc];
}

- (void)moveHelloLabelWithAni:(int)i time:(int)j type:(int)k
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3];
    self.helloTextLabel.center = CGPointMake(160, 300);
    [UIView commitAnimations];
}

- (void)moveHelloLabel
{
    self.helloTextLabel.text = @"ObjC 강의장입니다";
    self.helloTextLabel.center = CGPointMake(160, 300);
}

- (IBAction)butPressed:(id)sender {
    SEL s = @selector(moveHelloLabel);
    [self performSelector:s withObject:nil afterDelay:3.0];

    NSLog(@"butPressed");
}

- (IBAction)aniPressed:(id)sender {
    SEL s = @selector(moveHelloLabelWithAni:time:type:);
    [self performSelector:s withObject:nil afterDelay:1.0];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    NSLog(@"sliderChanged : %f", sender.value);

    self.kimImageView.alpha = sender.value;
    self.rainImageView.alpha = 1.0-sender.value;
}

@end

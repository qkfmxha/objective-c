//
//  ViewController.h
//  UITestApp
//
//  Created by T1 on 13. 1. 3..
//  Copyright (c) 2013년 T1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIImageView *rainImageView;
@property (retain, nonatomic) IBOutlet UIImageView *kimImageView;
@property (retain, nonatomic) IBOutlet UILabel *helloTextLabel;

- (IBAction)butPressed:(id)sender;
- (IBAction)aniPressed:(id)sender;
- (IBAction)sliderChanged:(UISlider *)sender;

@end

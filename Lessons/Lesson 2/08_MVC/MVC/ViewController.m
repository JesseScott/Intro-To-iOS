//
//  ViewController.m
//  MVC
//
//  Created by Jesse Scott on 2012-10-05.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import "ViewController.h"

// Ignore this part!
@interface ViewController ()

@end

// This is our implementation of our class
@implementation ViewController

// We have to synthesize the propertys (aka variables)
@synthesize sliderLabel;
@synthesize slider;

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

// Called everytime the slider is changed
- (IBAction)sliderChanged:(id)sender {
    // update the label text with the value of the slider
    // (casting a float to a string)
    self.sliderLabel.text = [NSString stringWithFormat:@"%.0f", self.slider.value];
}

// Called when the button is pressed
- (IBAction)resetSlider:(id)sender {
    // set the slider to 50 - a default value - and animate it
    [self.slider setValue:50 animated:YES];
    // as above...
    self.sliderLabel.text = [NSString stringWithFormat:@"%.0f", self.slider.value];
}

@end

//
//  ViewController.m
//  10_Advanced_Calculator
//
//  Created by Jesse Scott on 2012-11-09.
//  Copyright (c) 2012 ECUAD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


/*
 All I did here is:
 #1  copy/paste the 'calculate' method three times
 #2  changed 'calculate' to multiply
 #3  changed the names of the other three methods
 #4  changed 'c = x * ' to either '/', '-', '+' to reflect the type of math
*/

/*
 The other step was:
 #1  go to the .storyboard file
 #2  add three more buttons and label them
 #3  with the 'Files Owner' (orange transparent cube on the left) selected,
 go to the 'Connections Inspector' on the far top right
 #4  look under 'Received Actions' and drag from the circle from the appropriate function to the matching button
*/


- (IBAction) multiply {
    float a = ([textField1.text floatValue]);
    float b = ([textField2.text floatValue]);
    float c = a * b;
    label.text = [[NSString alloc] initWithFormat:@"%.02f", c];
    
}

- (IBAction) divide {
    float a = ([textField1.text floatValue]);
    float b = ([textField2.text floatValue]);
    float c = a / b;
    label.text = [[NSString alloc] initWithFormat:@"%.02f", c];
    
}

- (IBAction) subtract {
    float a = ([textField1.text floatValue]);
    float b = ([textField2.text floatValue]);
    float c = a - b;
    label.text = [[NSString alloc] initWithFormat:@"%.02f", c];
    
}

- (IBAction) add {
    float a = ([textField1.text floatValue]);
    float b = ([textField2.text floatValue]);
    float c = a + b;
    label.text = [[NSString alloc] initWithFormat:@"%.02f", c];
    
}

// <----- NOTICE THE LITTLE DOT - you can see the part of the .xib file this code is connected to
- (IBAction) clear {
    textField1.text = @"";
    textField2.text = @"";
    label.text = @"";
    
}

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

@end

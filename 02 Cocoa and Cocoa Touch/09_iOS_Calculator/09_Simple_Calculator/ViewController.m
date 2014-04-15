//
//  ViewController.m
//  09_Simple_Calculator
//
//  Created by Jesse Scott on 2012-11-09.
//  Copyright (c) 2012 ECUAD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


/*
 Here is our "calculate" method
 */
- (IBAction) calculate {
    // A local variable called 'a' that gets the value from our 1st textfield as a floating point value (ie. "1.0")
    float a = ([textField1.text floatValue]);
    // A local variable 'b' that gets the value from our 2nd textfield and multiplies it by 'x'
    float b = ([textField2.text floatValue]);
    // A local variable 'c' to do the math and hold the result
    float c = a + b;
    // This sets the text property (note the '.text') to a String with the calue of 'c'
    // Notice that since 'c' is a float, we need to turn it into a String (since that is what a label expects to be fed)
    // The '.02f' will make sure the result is precise up to two decimal points...
    label.text = [[NSString alloc] initWithFormat:@"%.02f", c];
    
}

/*
 UIKit is the core library that controls User Interface option son iOS
 */
- (IBAction) clear {
    // By NOT putting anything inbetween the quotes, we just make the values empty...
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

- (void)viewDidUnload {
    textField1 = nil;
    [super viewDidUnload];
}
@end

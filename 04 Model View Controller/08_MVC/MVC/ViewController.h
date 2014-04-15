//
//  ViewController.h
//  MVC
//
//  Created by Jesse Scott on 2012-10-05.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Properties (think of them as local variables to the class)
// We need to Synthesize these in the .m file ...
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;

// Methods (think of these as functionality for our class...)
- (IBAction)sliderChanged:(id)sender;
- (IBAction)resetSlider:(id)sender;

@end

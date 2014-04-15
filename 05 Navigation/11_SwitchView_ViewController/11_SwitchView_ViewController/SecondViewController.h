//
//  SecondViewController.h
//  11_SwitchView_ViewController
//
//  Created by Jesse Scott on 2012-11-09.
//  Copyright (c) 2012 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

// Our Button 'Does This Thing Work ?'
- (IBAction)clicked;

// Our Label '?'
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

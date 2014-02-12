//
//  ViewController.h
//  10_Advanced_Calculator
//
//  Created by Jesse Scott on 2012-11-09.
//  Copyright (c) 2012 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 Same Class...
 */
@interface ViewController : UIViewController {
    
    /*
     Same Variables of that Class...
     */
    IBOutlet UITextField *textField1;
    IBOutlet UITextField *textField2;
    IBOutlet UILabel     *label;
    
}

/*
 New Methods !!!
 */
- (IBAction) multiply;
- (IBAction) divide;
- (IBAction) subtract;
- (IBAction) add;
- (IBAction) clear;


@end

//
//  ViewController.h
//  09_Simple_Calculator
//
//  Created by Jesse Scott on 2012-11-09.
//  Copyright (c) 2012 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 A Class called "ViewController" that is a Sub-Class of UIViewController
 (the template of how all ViewControllers look and operate)
 */
@interface ViewController : UIViewController {
    
    /*
     We define two textfields and one label
     
     Notice that the 'datatype' is "IBOutlet"
     Whereas before we had int, not the actual variable type is an outlet to Interface Builder
     
     Also notice that these variables are instances of a Class, sub-classed from UITextField/UILabel
     */

    
    @property (weak, nonatomic)
    
}

/*
 Here are our two methods for this class - calculate and clear
 
 We put IBAction in the brackets because we need the methods to return an action from Interface Builder
 
 Notice the dash - all this means is that this method acts on the Object, not the Class
 (I can explain that more later if you need!)
 */
- (IBAction) calculate;
- (IBAction) clear;


@end

//
//  ViewController.h
//  LoadImageExample
//
//  Created by Jesse Scott on 2014-04-08.
//  Copyright (c) 2014 Langara. All rights reserved.
//

#import <UIKit/UIKit.h>

// Let's Make Our Class A Delegate Of UIImagePickerController
// Since We Will Need To Use Its Methods
@interface ViewController : UIViewController <UIImagePickerControllerDelegate> {
    
}

// Make A Connection To Our ImageView On The Storyboard
// We Will Use This To Show The Image We Picked
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


// Lets Make A Connection To Our Button On The Storyboard
// We Will Use This To Launch Our Image Picker
- (IBAction)chooseImageFromLibrary:(id)sender;

@end

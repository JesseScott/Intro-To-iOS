//
//  ViewController.h
//  ShowCameraExample
//
//  Created by Jesse Scott on 2014-04-08.
//  Copyright (c) 2014 Langara. All rights reserved.
//

#import <UIKit/UIKit.h>

// We Need To Import This Class To Ask For The Media Type
#import <MobileCoreServices/MobileCoreServices.h>


// Let's Make Our Class A Delegate Of UIImagePickerController
// Since We Will Need To Use Its Methods
@interface ViewController : UIViewController <UIImagePickerControllerDelegate> {
    
}

// Make A Connection To Our ImageView On The Storyboard
// We Will Use This To Show The Image We Captured
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

// This Is Used To Determine Whether The Photo Is New Or Not
@property BOOL newMedia;

// Lets Make A Connection To Our Button On The Storyboard
// We Will Use This To Launch Our Camera
- (IBAction)useCamera:(id)sender;



@end

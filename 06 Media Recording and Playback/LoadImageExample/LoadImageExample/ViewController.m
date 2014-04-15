//
//  ViewController.m
//  LoadImageExample
//
//  Created by Jesse Scott on 2014-04-08.
//  Copyright (c) 2014 Langara. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


// This Gets Called From Our Button
- (IBAction)chooseImageFromLibrary:(id)sender {
    
    // Make A New Image Picker
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    
    // Lets Tell The Picker That Our ViewController Can Manage It
    pickerController.delegate = self; // (dont worry about the warning!)
    
    // Lets Open Our Image Picker
    [self presentViewController:pickerController animated:YES completion:nil];

}

// This Gets Called When We Pick An Image
- (void) imagePickerController:(UIImagePickerController *)picker
         didFinishPickingImage:(UIImage *)image
         editingInfo:(NSDictionary *)editingInfo {
    
    // Lets Assign Our Picked Image To Our Image View On Our Storyboard
    self.imageView.image = image;
    
    // No Its Time For Our Image Picker To Go Away
    [self dismissModalViewControllerAnimated:YES];
}



@end

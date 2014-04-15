//
//  ViewController.m
//  ShowCameraExample
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
- (IBAction)useCamera:(id)sender {
    // Ask If The Device Has A Camera
    if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera]) {
        
        // Make A New Image Picker
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        
        // Set The Delegate Of Image Picker To Our Parent Class
        imagePicker.delegate = self;
        
        // Set The Media Source
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        // Set The Allowed Types (i.e. NO VIDEOS)
        imagePicker.mediaTypes = @[(NSString *) kUTTypeImage];
        
        // Dont Allow Editing Of The Image
        imagePicker.allowsEditing = NO;
        
        // Open The Image Picker
        [self presentViewController:imagePicker animated:YES completion:nil];
        
        // Notify That Weve Taken A New Picture
        _newMedia = YES;
    }
}

// This Gets Called When We Take A Picture
-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    // Set The Media Type
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    
    // Dismiss Our Camera View
    [self dismissViewControllerAnimated:YES completion:nil];
    
    // Ask If We Have An Image
    if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
        
        // Get The Image Info (path + metadata)
        UIImage *image = info[UIImagePickerControllerOriginalImage];
        
        // Set Our Image View On Our Storyboard With Our Captured Image
        _imageView.image = image;
        
        // Save Our Image
        if (_newMedia)
            UIImageWriteToSavedPhotosAlbum(image,
                                           self,
                                           @selector(image:finishedSavingWithError:contextInfo:),
                                           nil);
    }
    else if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {
        // Code here to support video if enabled
    }
}


// This Only Gets Called If There Was An Error Saving
-(void)image:(UIImage *)image
finishedSavingWithError:(NSError *)error
 contextInfo:(void *)contextInfo {
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Save failed"
                              message: @"Failed to save image"
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
}

// This Gets Called If The User Presses Cancel
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

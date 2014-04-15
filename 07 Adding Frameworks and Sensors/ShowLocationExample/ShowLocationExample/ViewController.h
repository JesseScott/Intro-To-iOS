//
//  ViewController.h
//  ShowLocationExample
//
//  Created by Jesse Scott on 2014-04-08.
//  Copyright (c) 2014 Langara. All rights reserved.
//

#import <UIKit/UIKit.h>

// This Is The Class To Access Our Location
#import <CoreLocation/CoreLocation.h>

// Lets Make Our ViewController A Delegate Of CLLocationManager
// So That We Can Use Its Methods
@interface ViewController : UIViewController <CLLocationManagerDelegate> {
    
}

// This Will Access Our GPS
@property (nonatomic, retain) CLLocationManager *locationManager;

// These Will Display Our GPS On The Screen
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *longitude;


// This Will Ask For A New GPS Fix
- (IBAction)updateLocation:(id)sender;



@end

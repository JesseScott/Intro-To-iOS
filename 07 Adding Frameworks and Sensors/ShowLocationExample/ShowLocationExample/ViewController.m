//
//  ViewController.m
//  ShowLocationExample
//
//  Created by Jesse Scott on 2014-04-08.
//  Copyright (c) 2014 Langara. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize latitude, longitude;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // If We Havent Already Started Our Location Manager
    if (self.locationManager == nil) {
        // Make A New Location Manager
        self.locationManager = [[CLLocationManager alloc] init];
        
        // Set Our Accurcy (to 10 metres)
        self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
        
        // Set Ourselves As The Delagate
        self.locationManager.delegate = self;
    }
    
    // Ask For Our Location
    [self.locationManager startUpdatingLocation];
    
}

// This Gets Called Automatically By The System When The Home Button Is Pressed
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // Turn off the location manager to save power.
    [self.locationManager stopUpdatingLocation];
}

// This Gets Called When We Have An Update To Our Location
- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    NSLog(@"%@", @"Core location has a position.");
}

// This Gets Called If We Cant Find Our Location
- (void) locationManager:(CLLocationManager *)manager
        didFailWithError:(NSError *)error {
    NSLog(@"%@", @"Core location can't get a fix.");
}

// This Gets Called From Our Button
- (IBAction)updateLocation:(id)sender {
    
    // Ask For New Location
    CLLocation *curPos = self.locationManager.location;
    
    // Display Our Location OnScreen
    self.latitude.text = [[NSNumber numberWithDouble:curPos.coordinate.latitude] stringValue];
    self.longitude.text = [[NSNumber numberWithDouble:curPos.coordinate.longitude] stringValue];
    
    // Log To Console
    NSLog(@"Lat: %@", self.latitude.text);
    NSLog(@"Long: %@", self.longitude.text);

}


@end

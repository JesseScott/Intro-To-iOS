//
//  ViewController.m
//  AcceleromterExample
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

    // Create Our Motion Manager That Will Control Our Acceleromter
    self.motionManager = [[CMMotionManager alloc] init];
    
    // Set The Refresh Rate At Which We Will Get New XYZ Values
    self.motionManager.accelerometerUpdateInterval = .2; // (0.2 Seconds or 5x a Second)
    
    // Start Getting Accelerometer Data
    [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue]
                                             withHandler:^(CMAccelerometerData  *accelerometerData, NSError *error) {
                                                 // This Call Our Custom Method Below And Gives The Current Data
                                                 [self outputAccelertionData:accelerometerData.acceleration];
                                                 if(error){
                                                     
                                                     NSLog(@"%@", error);
                                                 }
                                             }];
    
}

// This Gets Called EVERYTIME (5x a second) There Is New XYZ Values
-(void)outputAccelertionData:(CMAcceleration)acceleration {
    
    // Set Our Labels To Show The XYZ Values (to 2 decimal places)
    self.accX.text = [NSString stringWithFormat:@" %.2f",acceleration.x];
    self.accY.text = [NSString stringWithFormat:@" %.2f",acceleration.y];
    self.accZ.text = [NSString stringWithFormat:@" %.2f",acceleration.z];
    
}


@end

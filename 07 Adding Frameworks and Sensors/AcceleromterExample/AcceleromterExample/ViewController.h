//
//  ViewController.h
//  AcceleromterExample
//
//  Created by Jesse Scott on 2014-04-08.
//  Copyright (c) 2014 Langara. All rights reserved.
//

#import <UIKit/UIKit.h>

// This Is The Class That Controls Our Accelerometer
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController {
    
}

// These Are Labels To Show Our XYZ Values
@property (strong, nonatomic) IBOutlet UILabel *accX;
@property (strong, nonatomic) IBOutlet UILabel *accY;
@property (strong, nonatomic) IBOutlet UILabel *accZ;

// This Is The Manager To Access Our Accelerometer
@property (strong, nonatomic) CMMotionManager *motionManager;

// This Is The Method That Updates Our XYZ Values
-(void)outputAccelertionData:(CMAcceleration)acceleration;

@end

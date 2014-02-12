//
//  main.m
//  4_Functions
//
//  Created by Jesse Scott on 2012-09-29.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import <Foundation/Foundation.h>

//----------------------------
// Declare (Global) Variables
int sum, value1, value2;


//----------------------------
// Define Functions

// A Function That Takes An Integer As An Argument
// And Assigns That Integer To One Of Our Global Variables
void setFirstValue(int a) {
    value1 = a;
}

// A Function That Takes An Integer As An Argument
// And Assigns That Integer To One Of Our Global Variables
void setSecondValue(int b) {
    value2 = b;
}

// A Function That Takes Two Integers As Arguments And Returns The Sum Of Them
// Note That Because It Returns An Integer, It Is Defined As 'int' not 'void' 
int sumValues(int a, int b) {
    return a + b;
}

// A Function That Prints The Result
// Note That It Takes No Arguments, Thus It Is A 'void' Function
void printResult () {
    NSLog(@"The Sum is %i", sum);
}

//----------------------------
// MAIN

int main(int argc, const char * argv[])
{

    @autoreleasepool {


        
        // Set Value1 By Calling The Function 'setFirstValue'
        setFirstValue(25);
        // Double-check the value...
        NSLog(@"\t the first value is %i", value1);
        
        // Set Value2 By Calling The Function 'setSecondValue'
        setSecondValue(50);
        // Again, check it...
        NSLog(@"\t the first value is %i", value2);

        // Set 'sum' By Calling The Function 'sumValues'
        // And Passing 'value1' & 'value2' As Arguments
        sum = sumValues(value1, value2);
        
        // Print The Result
        printResult();
        
    }
    return 0;
}



//
//  main.m
//  6_Calculator
//
//  Created by Jesse Scott on 2012-09-20.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface Section

@interface Calculator : NSObject


- (void)    add;
- (void)    setFirstValue: (int) v1;
- (void)    setSecondValue: (int) v2;
- (void)    printResult;

@end

// Implementation Section

@implementation Calculator {
    int val1;
    int val2;
    int sum;
}

- (void)    add {
    sum = val1 + val2;
}

- (void)    setFirstValue: (int) v1 {
    val1 = v1;
}

- (void)    setSecondValue: (int) v2 {
    val2 = v2;
}

- (void) printResult {
    NSLog(@"The sum of %i and %i is %i", val1, val2, sum);
}

@end

// Main

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int value1, value2;
        
        // Declare Class and Object
        Calculator *cal;
        
        // Allocate + Initialize
        cal = [[Calculator alloc] init];
        
        // Get The First Value
        NSLog(@"\n Type The First Value...");
        // 'scanf' gets the keyboard input 
        scanf("%i", &value1);
        [cal setFirstValue: value1];
        
        // Get The Second Value
        NSLog(@"\n Type The Second Value...");
        scanf("%i", &value2);
        [cal setSecondValue: value2];
        
        // Display Using Add Method
        [cal add];
        
        // Print to the Console
        [cal printResult];
        
        
    }
    return 0;
}


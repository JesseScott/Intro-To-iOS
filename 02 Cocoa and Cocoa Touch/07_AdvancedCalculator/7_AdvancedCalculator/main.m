//
//  main.m
//  7_AdvancedCalculator
//
//  Created by Jesse Scott on 2012-09-20.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface Section

@interface Calculator : NSObject

- (void)    add;
- (void)    subtract;
- (void)    multiply;
- (void)    divide;
- (void)    setVal1: (int) v1;
- (void)    setVal2: (int) v2;

@end

// Implementation Section

@implementation Calculator {
    int val1;
    int val2;
}

- (void)    add {
    NSLog(@"\n The Result of %i Added To %i is %i", val1, val2, val1 + val2);
}

- (void)    subtract {
    NSLog(@"\n The Result of %i Subtracted From %i is %i", val1, val2, val1 - val2);
}

- (void)    multiply {
    NSLog(@"\n The Result of %i Multiplied By %i is %i", val1, val2, val1 * val2);
}

- (void)    divide {
    NSLog(@"\n The Result of %i Divided By %i is %i", val1, val2, val1 / val2);
}


- (void)    setVal1: (int) v1 {
    val1 = v1;
}

- (void)    setVal2: (int) v2 {
    val2 = v2;
}

@end

// Main

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // As before...
        int value1, value2;
        // we use a 'char' here to get the +, -, *, or /
        char operator;
        
        // Declare Class and Object
        Calculator *cal;
        
        // Allocate + Initialize
        cal = [[Calculator alloc] init];
        
        // Get The Expression
        NSLog(@"\n In Your Expression...");
        scanf("%i %c %i", &value1, &operator, &value2);
        [cal setVal1: value1];
        [cal setVal2: value2];
        
        // Determine Operator
        if (operator == '+') {
            [cal add];
        }
        else if (operator == '-') {
            [cal subtract];
        }
        else if (operator == '*') {
            [cal multiply];
        }
        else if (operator == '/') {
            [cal divide];
        }
        
        
        
    }
    return 0;
}


//
//  main.m
//  5_Objects
//
//  Created by Jesse Scott on 2012-09-20.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface Section - this is like the blueprint of the Class

@interface Addition : NSObject  // @interface ClassName : ParentClass (Class names should be Capitalized !!!

- (void)    addUp;              // These are the Method Declarations (what the Class can do)
- (void)    setFirstValue: (int) v1;  // This is a Method that takes an argument
- (void)    setSecondValue: (int) v2;
- (void)    printResult;

@end                            // End of the Interface section

// Implementation Section - this is the actual details of HOW the Class does what it does

@implementation Addition {      // @implementation ClassName
    int val1;                   // Anything in the Curly Brackets is
    int val2;                   // local variables just for use within the Class
    int sum;
}                               //

// The following Methods must have the same name and structure as in the Interface section
- (void)    addUp {
   sum = val1 + val2; // except that their 'guts' are filled in...
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

@end                            // End of the Implementation section

// Main

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // Declare Class and Object - the blueprint and the actual instance of the blueprint
        Addition *firstAddition;        // the '*' is necessary, but I won't explain it too much now! (later!)
        
        // Allocate + Initialize Memory Space
        firstAddition = [[Addition alloc]init]; // note that we are 'nesting' two messages into one here...
        
        // Set Value 1
        [firstAddition setFirstValue:4];      // Calling a Method of a Class is called 'Messaging the Object' in Obj-C
        
        // Set Value 2
        [firstAddition setSecondValue:967];    // the syntax is: [objectName method:parameter];
        // note we use the object name, NOT the class name
        
        // Display Using Add Method
        [firstAddition addUp];
        
        // Print to the Console
        [firstAddition printResult];
        
        //[firstAddition release]; // <-- we used to have to do this before 'Automatic Reference Counting' ... but no more!! yay !!
        
    }
    return 0;
}
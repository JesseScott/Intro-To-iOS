//
//  main.m
//  2_Strings
//
//  Created by Jesse Scott on 2012-09-20.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

#import <Foundation/Foundation.h>
// we add this line in order to use 'printf()'
#import <stdio.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...

        // Strings in Objective-C always start with an @ symbol, and then in between quotes
        // And it should show up as Red, otherwise there's a typo!!
        // So...
        // @"This Is A String"

        NSLog(@"\n Hello, \t World!");
        // the '\n' means to start a new line
        // the '\t' means to input a tab
        
        printf("\n 'printf' is another way to print to the console..");
        
        
    }
    return 0;
}


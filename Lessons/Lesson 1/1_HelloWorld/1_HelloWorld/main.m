//
//  main.m
//  1_HelloWorld
//
//  Created by Jesse Scott on 2012-09-20.
//  Copyright (c) 2012 Jesse Scott. All rights reserved.
//

// A 'Double Slash' denotes a 'Comment' - the computer ignores this when it compiles your app

// The '#import' statement tells your code to include other parts ('Headers') of existing code
#import <Foundation/Foundation.h>

// All C/C++/C#/Objective-C apps start with a 'main' function
int main(int argc, const char * argv[]) 
{ // This is the start of the function - the opening Curly Bracket

    @autoreleasepool { // this is for proper memory management - you DONT have to include it in your own functions
        
        // insert code here...
        NSLog(@"Hello, World!"); // Calls the 'NSLog' function
        
    }
    return 0; // this is the Integer the function returns - '0' means all good! (anything else would be a problem!)
} // This is the end of the function - the matching Curly Bracket

/* (this is the start of a multi-line comment)

A function has the following syntax:
 
 type name() {
 
 }

 * where 'type' is either 'void' or whatever datatype (int, float, etc) the function gives back to the code that called it
 
 * you can name it whatever you want, but the general rule is to use 'camelCase'
   ie. lowercase first word, then Capitalize the first letter of each subsequent word




(this is the end of the multi-line comment)
*/
//
//  main.m
//  3_Variables
//
//  Created by Jesse Scott on 2012-09-20.
//  Copyright (c) 2012 ECUAD. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // First We Declare The Type Of Variable, Then Its Name
        // type name (int sum)
        // always end it with a semicolon, unless you are doing more than one on a line!
        // (then use commas, with a semicolon after the last one!)
        int value1, value2;
        
        // The We Assign A Value To The Variable
        // (note that we dont have to use it's type (i.e. 'int') anymore)
        // name = value (value1 = 25)
        value1 = 25;
        value2 = 50;
        
        // Here we declare AND assign all in the same line !! phew !!
        int sum = value1 + value2;
        
        
        // To Print a variable, place a '%i' where it should appear in the String
        // AFTER the closing quotation marks, put a comma...
        // Then each variable (the # of variables MUST match the number of '%i' placeholders)
        NSLog(@"\n The Sum of %i and %i is %i", value1, value2, sum);
        
        // (note, for different datatypes - float, char, String - the '%i' would change to something else...
        // (more on that later!)
        
    }
    return 0;
}


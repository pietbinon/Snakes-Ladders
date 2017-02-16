//
//  main.m
//  Snakes&Ladders
//
//  Created by Pierre Binon on 2017-02-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        NSLog (@"Welcome to Snakes & Ladders.\nFirst to reach the 100 square wins.\nTry to land at the bottom of a ladder to go up quicker.\nAvoid snakes heads otherwise you will have to go back a few squares.\nGood Luck!");
        NSLog (@"Please enter roll (or r for short) to roll the dice");
        
        Player *player1 = [[Player alloc] init];
        
        
        
        
        while (gameOn) {
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([input isEqualToString: @"r"] || [input isEqualToString: @"roll"])
                [player1 roll];
            else {
                NSLog (@"You haven't entered the required text... Goodbye!");
                break;
            }
        }
    }
    return 0;
}

//
//  Player.m
//  Snakes&Ladders
//
//  Created by Pierre Binon on 2017-02-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "Player.h"



@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        
        _gameLogic = @{@(4)  : @(14),
                       @(9)  : @(31),
                       @(20) : @(38),
                       @(28) : @(84),
                       @(40) : @(59),
                       @(51) : @(67),
                       @(63) : @(81),
                       @(17) : @(7) ,
                       @(64) : @(60),
                       @(89) : @(26),
                       @(95) : @(75),
                       @(99) : @(78)};
                       
    }
    return self;
}


- (void) roll {
    
    int randomValue = arc4random_uniform(6) + 1;
    NSLog (@"You rolled a %ld", (long)randomValue);
    self.currentSquare += randomValue;
    
    //Convert NSInteger into NSNumber
    NSNumber *myCurrentSquare = @(self.currentSquare);
    
    //If the content of the () == 1 (YES), meaning if there is a match between currentSquare and a key in the NSDictionary
    if ([self.gameLogic objectForKey: myCurrentSquare]) {
        
        //Assign the current value of currentSquare to a temp variable called baseValue
        int baseValue = self.currentSquare;
        
        //Assign now to currentSquare the value retrieved from the NSDictionary (and based on the key - previous step0 after
        //converting this value from an NSMumber to an integer (same operation as line 49)
        self.currentSquare = [[self.gameLogic objectForKey: myCurrentSquare] intValue];
        
        if (self.currentSquare > baseValue)
            NSLog (@"GREAT! You have been promoted from square %d to square %ld", baseValue, (long)self.currentSquare);
        else
            NSLog (@"BUMMER!!! You have been demoted from square %d to square %ld", baseValue, (long)self.currentSquare);
    }
    NSLog (@"You are currently on square %ld", (long)self.currentSquare);
    
    
}

@end

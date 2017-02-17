//
//  Player.h
//  Snakes&Ladders
//
//  Created by Pierre Binon on 2017-02-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString* output;
@property (nonatomic) BOOL gameOver;

- (void) roll;

@end

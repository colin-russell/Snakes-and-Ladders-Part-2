//
//  PlayerManager.h
//  Snakes and Ladders Part 2
//
//  Created by Colin on 2018-04-15.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;

- (void)createPlayers : (int)numOfPlayers;
- (void)roll;
- (void)output;
- (Player *)currentPlayer;

@end

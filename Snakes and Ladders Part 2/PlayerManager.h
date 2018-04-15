//
//  PlayerManager.h
//  Snakes and Ladders Part 2
//
//  Created by Colin on 2018-04-15.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;

- (void)createPlayers : (int)numOfPlayers;

@end

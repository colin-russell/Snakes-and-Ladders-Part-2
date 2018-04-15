//
//  main.m
//  Snakes and Ladders Part 2
//
//  Created by Colin on 2018-04-15.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOver = NO;
        BOOL choosePlayers = YES;
        char str[100];
        PlayerManager *playerManager = [PlayerManager new];
        
        //NSLog(@"WELCOME TO SNAKES AND LADDERS! \nType \"roll\" or \"r\" to roll the die:");
        while (choosePlayers == YES) {
            NSLog(@"WELCOME TO SNAKES AND LADDERS! \nPlease choose the number of players:");
            fgets (str, 100, stdin);
            NSString *numPlayersString = [[NSString alloc] initWithUTF8String:str];
            numPlayersString = [numPlayersString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([numPlayersString intValue] > 0){
                [playerManager createPlayers:[numPlayersString intValue]];
                choosePlayers = NO;
            }
            else if (![numPlayersString intValue])
                NSLog(@"ERROR: Must enter a numerical value greater than 0.");
        }
        
        while (gameOver == NO) {
            
            
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputString containsString:@"roll"] | [inputString containsString:@"r"]) {
                [playerManager roll];
            }
            if ([playerManager currentPlayer].currentSquare == 100)
                gameOver = YES;
            
        }
        
        
    }
    return 0;
}

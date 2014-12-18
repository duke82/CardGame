//
//  PlayingCard.h
//  CardGame
//
//  Created by Dinesh Garg on 11/17/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#ifndef CardGame_PlayingCard_Bridging_Header_h
#define CardGame_PlayingCard_Bridging_Header_h
#import "CardGame-Bridging-Header.h"

@interface PlayingCard:Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)rankStrings;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end

#endif

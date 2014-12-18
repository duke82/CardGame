//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Dinesh Garg on 11/17/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCardDeck.h"
#import "PlayingCard-Bridging-Header.h"


@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self){
        for (NSString *suit in [PlayingCard validSuits]){
            for (NSUInteger rank=1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end

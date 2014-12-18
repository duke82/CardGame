//
//  Card.m
//  CardGame
//
//  Created by Dinesh Garg on 11/15/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#import "CardGame-Bridging-Header.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
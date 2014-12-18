//
//  PlayingCard.m
//  CardGame
//
//  Created by Dinesh Garg on 11/17/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard-Bridging-Header.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // because we provide setter & getter

+ (NSArray *)validSuits
{
    return @[@"♤", @"♧", @"♡", @"♢"];
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (NSString *)suit{
    return _suit ? _suit: @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] -1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

@end
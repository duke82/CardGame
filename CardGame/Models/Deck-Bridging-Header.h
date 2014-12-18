//
//  Deck-Bridging-Header.h
//  CardGame
//
//  Created by Dinesh Garg on 11/17/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#ifndef CardGame_Deck_Bridging_Header_h
#define CardGame_Deck_Bridging_Header_h

#import <Foundation/Foundation.h>
#import "CardGame-Bridging-Header.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end

#endif

//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
#ifndef CardGame_Card_Bridging_Header_h
#define CardGame_Card_Bridging_Header_h


#import <Foundation/Foundation.h>

@interface Card: NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray*)otherCards;

@end


#endif

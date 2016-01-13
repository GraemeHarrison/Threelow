//
//  Dice.h
//  Threelow
//
//  Created by Graeme Harrison on 2016-01-13.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSNumber *dieNumber;
@property (nonatomic, strong) NSArray *numbersOnDie;
//@property (nonatomic, strong) NSArray *diceArray;

-(NSNumber *)randomize;

@end

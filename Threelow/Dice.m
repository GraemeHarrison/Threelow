//
//  Dice.m
//  Threelow
//
//  Created by Graeme Harrison on 2016-01-13.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numbersOnDie = [[NSArray alloc] initWithObjects:@1, @2, @3, @4, @5, @6, nil];
    }
    return self;
}

-(NSString *)dieValue: (NSNumber *)dieNumber {
    NSArray *dotsOnDie = [[NSArray alloc] initWithObjects:@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
    return [dotsOnDie objectAtIndex:dieNumber.integerValue-1];
}

-(NSNumber *)randomize {
    int random = arc4random_uniform((int)self.numbersOnDie.count);
    return [self.numbersOnDie objectAtIndex:random];
}

@end

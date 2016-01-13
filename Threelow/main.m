//
//  main.m
//  Threelow
//
//  Created by Graeme Harrison on 2016-01-13.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    
    NSMutableArray *numbersRolled = [[NSMutableArray alloc] init];
    NSMutableDictionary *numbersHeld = [[NSMutableDictionary alloc] init];

    
    
    while (YES) {
        
        NSLog(@"Type 'roll' to roll the die");
        char inputChars[255];
        scanf("%s", inputChars);
        NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        if ([inputString isEqualToString:@"roll"])
        {
            Dice *firstDie = [[Dice alloc] init];
            Dice *secondDie = [[Dice alloc] init];
            Dice *thirdDie = [[Dice alloc] init];
            Dice *fourthDie = [[Dice alloc] init];
            Dice *fifthDie = [[Dice alloc] init];
            
            firstDie.dieNumber = [firstDie randomize];
            secondDie.dieNumber = [secondDie randomize];
            thirdDie.dieNumber = [thirdDie randomize];
            fourthDie.dieNumber = [fourthDie randomize];
            fifthDie.dieNumber = [fifthDie randomize];
            
            [numbersRolled addObject:firstDie.dieNumber];
            [numbersRolled addObject:secondDie.dieNumber];
            [numbersRolled addObject:thirdDie.dieNumber];
            [numbersRolled addObject:fourthDie.dieNumber];
            [numbersRolled addObject:fifthDie.dieNumber];
            
            NSLog(@"First die is:%@\n Second die is:%@\n Third die is:%@\n Fourth die is:%@\n Fifth die is:%@\n",firstDie.dieNumber,secondDie.dieNumber,thirdDie.dieNumber,fourthDie.dieNumber,fifthDie.dieNumber );
            NSLog(@"Your numbers are %@", numbersRolled);
        } else {
            return 0;
            
        }
    }
    
    return 0;
}

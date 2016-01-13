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
    
    NSLog(@"First die is:%@\n Second die is:%@\n Third die is:%@\n Fourth die is:%@\n Fifth die is:%@\n",firstDie.dieNumber,secondDie.dieNumber,thirdDie.dieNumber,fourthDie.dieNumber,fifthDie.dieNumber );
    
    return 0;
}

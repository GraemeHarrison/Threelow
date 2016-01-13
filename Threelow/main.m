//
//  main.m
//  Threelow
//
//  Created by Graeme Harrison on 2016-01-13.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    
    InputCollector *input = [[InputCollector alloc] init];
    GameController *hold = [[GameController alloc] init];
    
    NSMutableArray *numbersRolled = [[NSMutableArray alloc] init];
    //NSMutableDictionary *numbersHeld = [[NSMutableDictionary alloc] init];
    
    Dice *firstDie = [[Dice alloc] init];
    Dice *secondDie = [[Dice alloc] init];
    Dice *thirdDie = [[Dice alloc] init];
    Dice *fourthDie = [[Dice alloc] init];
    Dice *fifthDie = [[Dice alloc] init];
    
    while (YES) {
        
        NSString *promptResult = [input inputForPrompt:@"\nType 'roll' to roll the die"];
        
        if ([promptResult isEqualToString:@"roll"])
        {
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
            
            NSLog(@"\n Die 1) is:%@ %@\n Die 2) is:%@ %@\n Die 3) is:%@ %@\n Die 4) is:%@ %@\n Die 5) is:%@ %@\n",
                  firstDie.dieNumber,[firstDie dieValue:firstDie.dieNumber],
                  secondDie.dieNumber,[secondDie dieValue:secondDie.dieNumber],
                  thirdDie.dieNumber,[thirdDie dieValue:thirdDie.dieNumber],
                  fourthDie.dieNumber,[fourthDie dieValue:fourthDie.dieNumber],
                  fifthDie.dieNumber,[fifthDie dieValue:fifthDie.dieNumber] );
            
            while (YES) {
                NSString *holdResult = [input inputForPrompt:@"\nWhich die would you like to hold? Type 1, 2, 3, 4 or 5 then press enter. Type 'quit' to roll again."];
                
                if ([holdResult isEqualToString:@"1"]) {
                    [hold holdDie:firstDie.dieNumber];
                } else if ([holdResult isEqualToString:@"2"]) {
                    [hold holdDie:secondDie.dieNumber];
                } else if ([holdResult isEqualToString:@"3"]){
                    [hold holdDie:thirdDie.dieNumber];
                } else if ([holdResult isEqualToString:@"4"]) {
                    [hold holdDie:fourthDie.dieNumber];
                } else if ([holdResult isEqualToString:@"5"]) {
                    [hold holdDie:fifthDie.dieNumber];
                } else if ([holdResult isEqualToString:@"quit"]) {
                    break;
                } else {
                    NSLog(@"\nSorry, nvalid request");
                }
            }
        }
    }
    return 0;
}

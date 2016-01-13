//
//  GameController.h
//  Threelow
//
//  Created by Graeme Harrison on 2016-01-13.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *numbersRolled;
@property (nonatomic, strong) NSMutableDictionary *numbersHeld;

@end

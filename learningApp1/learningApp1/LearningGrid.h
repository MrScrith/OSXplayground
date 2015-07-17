//
//  LearningGrid.h
//  learningApp1
//
//  Created by Erik Ekedahl on 7/16/15.
//  Copyright (c) 2015 Erik Ekedahl. All rights reserved.
//

#ifndef learningApp1_LearningGrid_h
#define learningApp1_LearningGrid_h

#import <SpriteKit/SpriteKit.h>

@interface LearningGrid: SKNode

-(id) initWithSize: (float) s;

-(void) runSimulation;

@end

#endif

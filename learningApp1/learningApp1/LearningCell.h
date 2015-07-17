//
//  LearningCell.h
//  learningApp1
//
//  Created by Erik Ekedahl on 7/16/15.
//  Copyright (c) 2015 Erik Ekedahl. All rights reserved.
//

#ifndef learningApp1_LearningCell_h
#define learningApp1_LearningCell_h

#import <SpriteKit/SpriteKit.h>

@interface LearningCell: SKNode

@property LearningCell *Right;
@property LearningCell *Left;
@property LearningCell *Up;
@property LearningCell *Down;

-(id) initWithSize: (float) s;

@end

#endif

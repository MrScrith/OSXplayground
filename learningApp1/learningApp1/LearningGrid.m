//
//  LearningGrid.m
//  learningApp1
//
//  Created by Erik Ekedahl on 7/16/15.
//  Copyright (c) 2015 Erik Ekedahl. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "LearningGrid.h"
#include "LearningCell.h"




@implementation LearningGrid


-(id) initWithSize: (float) s
{
    self = [super init];
    
    
    
    SKShapeNode *shape = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake( s, s)];
    shape.position = CGPointMake(CGRectGetMidX(self.frame),
                                 CGRectGetMidY(self.frame));
    shape.strokeColor = [SKColor blueColor];
    shape.lineWidth = 3;
    
    shape.fillColor = [[SKColor blueColor] colorWithAlphaComponent: 0.8];    
    
    
    [ self addChild: shape];
    
    
    return self;
}

-(void) runSimulation
{
    
}

@end

//
//  GameScene.m
//  learningApp1
//
//  Created by Erik Ekedahl on 7/15/15.
//  Copyright (c) 2015 Erik Ekedahl. All rights reserved.
//

#import "GameScene.h"
#include <stdlib.h>
#include "LearningGrid.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    float size = (self.frame.size.width < self.frame.size.height) ? self.frame.size.width : self.frame.size.height;
    
    LearningGrid *lg = [[LearningGrid alloc] initWithSize: size * 0.9];
    
    lg.position = CGPointMake(CGRectGetMidX(self.frame),
                                 CGRectGetMidY(self.frame));
    [self addChild:lg];
}

-(void)mouseDown:(NSEvent *)theEvent {
     /* Called when a mouse click occurs */

    SKSpriteNode *hull = [[SKSpriteNode alloc] initWithColor:[SKColor redColor] size:CGSizeMake(64,32)];
    
    hull.position = [theEvent locationInNode:self];
    
    SKAction *hover = [SKAction sequence:@[
                                           [SKAction waitForDuration:1.0],
                                           [SKAction moveByX:100 y:50.0 duration:1.0],
                                           [SKAction waitForDuration:1.0],
                                           [SKAction moveByX:-100.0 y:-50 duration:1.0]]];
    [hull runAction: [SKAction repeatActionForever:hover]];
    
    [self addChild: hull];
    
    SKSpriteNode *light1 = [self newLight:[SKColor yellowColor]];
    
    light1.position = CGPointMake(-28.0, 6.0);
    [hull addChild:light1];
    
    SKSpriteNode *light2 = [self newLight:[SKColor greenColor]];
    
    light2.position = CGPointMake(28.0, 6.0);
    [hull addChild:light2];
    
    
}

-(void)didChangeSize:(CGSize)oldSize
{
    
    
    
}

- (SKSpriteNode *)newLight:(SKColor *)lightColor
{
    
    SKSpriteNode *light = [[SKSpriteNode alloc] initWithColor:lightColor size:CGSizeMake(8,8)];
    
    SKAction *blink = [SKAction sequence:@[
                                           [SKAction fadeOutWithDuration:0.25],
                                           [SKAction fadeInWithDuration:0.25]]];
    SKAction *blinkForever = [SKAction repeatActionForever:blink];
    [light runAction: blinkForever];
    
    return light;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end

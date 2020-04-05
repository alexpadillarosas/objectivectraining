//
//  Player.m
//  helloworld
//
//  Created by alex on 3/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [self initWithInteger:5000];
    return self;
}

- (instancetype)initWithInteger: (int) initialScore
{
    self = [super init];
    if (self) {
        _score = initialScore;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"the dealloc method is called automatically.");
}

@end

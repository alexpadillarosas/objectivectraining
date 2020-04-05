//
//  Player.h
//  helloworld
//
//  Created by alex on 3/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property int score;
//custom init with integer, we needed in the interface
- (instancetype)initWithInteger: (int) initialScore;

@end

NS_ASSUME_NONNULL_END

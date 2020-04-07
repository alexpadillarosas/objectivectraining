//
//  Fraction.h
//  objectivectraining
//
//  Created by alex on 7/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printing.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject <Printing>
@property (nonatomic) int numerator;
@property (nonatomic) int denominator;

-(Fraction *) initWitNumerator: (int) n denominator: (int) d;

@end

NS_ASSUME_NONNULL_END

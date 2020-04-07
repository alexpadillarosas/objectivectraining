//
//  Complex.h
//  objectivectraining
//
//  Created by alex on 7/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printing.h"

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject <Printing>

@property (nonatomic) double real;
@property (nonatomic) double imaginary;

-(Complex *)initWithReal: (double)r andImaginary: (double) i;

@end

NS_ASSUME_NONNULL_END

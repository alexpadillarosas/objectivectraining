//
//  Complex.m
//  objectivectraining
//
//  Created by alex on 7/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Complex.h"

@implementation Complex

-(Complex *)initWithReal:(double)r andImaginary:(double)i{
    self = [self init];
    if(self){
        self.real = r;
        self.imaginary = i;
    }
    return self;
}

-(NSString *)print{
    //NSLog(@"real: %f, imaginary: %f", [self real], [self imaginary]);
    NSString *desc = [NSString stringWithFormat:@"real: %f and imaginary: %f", [self real], [self imaginary]];
    return desc;
}

@end

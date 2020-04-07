//
//  Fraction.m
//  objectivectraining
//
//  Created by alex on 7/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(Fraction *)initWitNumerator:(int)n denominator:(int)d{
    self = [self init];
    if(self){
        self.numerator = n;
        self.denominator = d;
    }
    return self;
}
//NSString *desc = [NSString stringWithFormat:@"\t Employee: %i \n \t Name: %@ \n \t Was hired on: %@ \n -----", [self employeeNumber], [self name], [self hireDate]];
-(NSString *) print{
    NSString *desc = [NSString stringWithFormat:@"numerator: %i and denominator: %i", [self numerator], [self denominator]];
//    NSLog(@"numerator: %i and denominator: %i", [self numerator], [self denominator]);
    return desc;
}


@end

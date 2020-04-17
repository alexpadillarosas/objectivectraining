//
//  MathUtility.m
//  helloworld
//
//  Created by alex on 3/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility

-(int)timesTen:(int)number{
    NSLog(@"numer is: %i", number);
    return number * 10;
}

-(int)addNumber:(int)a toNumber:(int)b{
    NSLog(@"");
    return a + b;
}
@end

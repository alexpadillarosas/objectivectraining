//
//  Account.m
//  objectivectraining
//
//  Created by alex on 6/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Account.h"
#import "Account+PrivateProperty.h"

@implementation Account

- (instancetype)init
{
    self = [super init];
    if (self) {
        //initialise the balance
        _balance = [NSDecimalNumber decimalNumberWithString:@"0.00"];
    }
    return self;
}

-(void) deposit:(NSDecimalNumber *)amount{
    NSLog(@"Logging this deposit on %@ of %@",[NSDate date], amount);
    //check amount
    if(amount.integerValue > 10000){
        NSLog(@"Large deposit. Place hold on funds.");
        //etc.
    }
    self.balance = [self.balance decimalNumberByAdding:amount];
    NSLog(@"Balance is now %@", self.balance);
}

-(void) withdraw:(NSDecimalNumber *)amount{
    NSLog(@"Logging this withdrawal on %@", [NSDate date]);
    self.balance = [self.balance decimalNumberBySubtracting:amount];
    NSLog(@"Balance is now %@", self.balance);
}

@end

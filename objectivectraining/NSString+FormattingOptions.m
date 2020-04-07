//
//  NSString+FormattingOptions.m
//  objectivectraining
//
//  Created by alex on 6/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "NSString+FormattingOptions.h"

@implementation NSString (FormattingOptions)

-(NSString *)convertWhitespace{
    NSString *newString = [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return newString;
}

@end

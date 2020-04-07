//
//  Account.h
//  objectivectraining
//
//  Created by alex on 6/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject

@property NSString *accountName;
@property int accountNumber;
//this property has been moved to Account+PrivateProperty.h
//@property NSDecimalNumber *balance;

//later on we will declarate this
@property (readonly) NSDecimalNumber *balance;

-(void) deposit: (NSDecimalNumber *) amount;
-(void) withdraw: (NSDecimalNumber *) amount;

@end

NS_ASSUME_NONNULL_END

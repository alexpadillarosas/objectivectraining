//
//  Employee.h
//  helloworld
//
//  Created by alex on 3/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject <NSCoding>

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;

//here someMethod is an instance method and it's represented with the "-" sign, "+" symbol represents class methods
//remember class methods are available for the class, not for the instance. Class : NSDate, instance : today
-(void) someMethod;

@end

NS_ASSUME_NONNULL_END

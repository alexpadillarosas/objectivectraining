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


-(void) someMethod;

@end

NS_ASSUME_NONNULL_END

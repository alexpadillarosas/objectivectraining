//
//  Employee.m
//  helloworld
//
//  Created by alex on 3/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Employee.h"

@implementation Employee

//this is an instance variable, it's global to all instant methods, and as it has been defined in the implementation of the class,
//it can't be accessed from outside.
int years;

//here we need to implement the method
-(void) someMethod {
    //here is the behavior
    NSLog(@"This is a method call in the new object!");
}
//The description method already exists in NSObject
-(NSString *) description{
    NSString *desc = [NSString stringWithFormat:@"\t Employee: %i \n \t Name: %@ \n \t Was hired on: %@ \n -----", [self employeeNumber], [self name], [self hireDate]];
    return desc;
}
//this method is used when you want to encode your customised object
-(void)encodeWithCoder:(NSCoder *)coder{
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeInt:self.employeeNumber forKey:@"empnum"];
    [coder encodeObject:self.hireDate forKey:@"hdate"];
}
//this method is used when you want to decode the customised object
-(instancetype)initWithCoder:(NSCoder *)coder{
    self = [self init];
    if(self){
        _name = [coder decodeObjectForKey:@"name"];
        _employeeNumber = [coder decodeIntForKey:@"empnum"];
        _hireDate = [coder decodeObjectForKey:@"hdate"];
    }
    return self;
}

@end

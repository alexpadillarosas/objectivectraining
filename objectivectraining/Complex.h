//
//  Complex.h
//  objectivectraining
//
//  Created by alex on 7/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

//The 2 following lines are valid ways to import a module
//#import <Foundation/Foundation.h>
@import Foundation;

#import "Printing.h"

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject <Printing>
//Making a property nonatomic means it can be accessed more quickly, but will cause issues if you try to access it and change it simultaneously.
//The oposite to nonatomic is atomic, where you can do the opposite, access it and change it.
@property (nonatomic) double real;
@property (nonatomic) double imaginary;

-(Complex *)initWithReal: (double)r andImaginary: (double) i;

@end

NS_ASSUME_NONNULL_END

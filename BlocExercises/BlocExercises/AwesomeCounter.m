//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    NSString * numberString = @"";
    if (number < otherNumber){
        for (NSInteger i =number; i <= otherNumber; i++) {
            numberString = [numberString stringByAppendingString: [NSString stringWithFormat:@"%ld",i] ];
        }
    }
    else {
        for (NSInteger i =otherNumber; i <= number; i++) {
            numberString = [numberString stringByAppendingString: [NSString stringWithFormat:@"%ld",i] ];
        }
    }

    
    return numberString;
}

@end

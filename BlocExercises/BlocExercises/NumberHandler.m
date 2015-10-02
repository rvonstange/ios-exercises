//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int x = [number intValue];
    NSNumber * result = [NSNumber numberWithInt: x*2];
    return result;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger upperLimit = 0;
    NSInteger lowerLimit = 0;
    if (number > otherNumber) {
        upperLimit = number;
        lowerLimit = otherNumber;
    }
    else if (otherNumber > number) {
        upperLimit = otherNumber;
        lowerLimit = number;
    }
    NSArray *listofNum = [NSArray new];
    for (NSInteger i = lowerLimit; i <=upperLimit; i++) {
        listofNum = [listofNum arrayByAddingObject:[NSNumber numberWithInteger:i]];
    }
    return listofNum;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger min = [arrayOfNumbers[0] integerValue];
    for (NSNumber * i in arrayOfNumbers) {
        if (min > [i integerValue]) {
            min = [i integerValue];
        }
    }
    return min;
}

@end

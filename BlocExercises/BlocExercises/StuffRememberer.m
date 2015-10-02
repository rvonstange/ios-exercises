//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copyingArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floater = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.rememberArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.copyingArray;
}

- (CGFloat) floatYouShouldRemember {
    return self.floater;
}

@end
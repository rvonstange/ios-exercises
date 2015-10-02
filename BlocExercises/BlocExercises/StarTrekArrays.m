//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray * starTrekArray = [characterString componentsSeparatedByString:@";"];
    return starTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString * stringOfCharacters = [characterArray componentsJoinedByString:@";"];
    return stringOfCharacters;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray * sorted = [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    return sorted;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    for (NSString *character in characterArray) {
        if ([character containsString:@"worf"] || [character containsString:@"Worf"]) {
            return YES;
        }
    }
    return NO;
}

@end

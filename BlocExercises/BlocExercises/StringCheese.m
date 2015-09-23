//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *statement = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return statement;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString * noCheese = cheeseName;
    //NSLog(@"%@", noCheese);
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        noCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return noCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString * cheeseCountStatement = @"";
    if (cheeseCount == 1) {
        cheeseCountStatement = @"1 cheese";
    } else {
        cheeseCountStatement = [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
    }
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return cheeseCountStatement;
}

@end

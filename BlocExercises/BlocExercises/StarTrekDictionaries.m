//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return [characterDictionary objectForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSArray *drinkList = @[];
    for (NSDictionary *character in charactersArray) {
        drinkList = [drinkList arrayByAddingObject:(NSString *)[character objectForKey:@"favorite drink"]];
    }
    return drinkList;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary * temp = [characterDictionary mutableCopy];
    [temp setObject:@"Hello I am a special quote" forKey:@"quote"];
    NSDictionary * result = [NSDictionary dictionaryWithDictionary:temp];
    return result;
}

@end

#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray <NSNumber *> *results = [NSMutableArray new];
    NSMutableArray <NSNumber *> *tempArray = [rankedArray mutableCopy];
    NSMutableArray <NSNumber *> *cleanTempArray = [NSMutableArray new];
    
    for (NSNumber *ranked in playerArray)
    {
        // Добавить
        [tempArray addObject:ranked];
        [tempArray sortUsingComparator:^NSComparisonResult(NSNumber *obj1,NSNumber *obj2) {
            return [obj2 compare:obj1];
        }];
        // Удалить повторы
        NSLog(@"TempArray");
        
        NSNumber *num = 0;
        for (NSNumber *i in tempArray)
        {
            if (i != num)
            {
                [cleanTempArray addObject:i];
                num = i;
            }
        }
        
       // NSUInteger position = [cleanTempArray indexOfObject:ranked] +1;
        [results addObject: [NSNumber numberWithInteger:[cleanTempArray indexOfObject:ranked] +1]];
        [cleanTempArray removeAllObjects];
    }
    
    return results;
}

@end

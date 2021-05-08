#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return nil;
    }
    
    if (self.count == 1)
    {
        return self[0];
    }
    
    if (self.count == 2)
    {
        if ([self[0] integerValue] > [self[1] integerValue])
        {
            return self[1];
        }
        else
        {
            return self[0];
        }
    }
    
    NSUInteger left = 0;
    NSUInteger right = self.count - 1;
    
    if ([self[0] integerValue] < [self[right] integerValue])
    {
        return self[0];
    }
    else
    {
        while (right >= left) {
            NSUInteger mid = left + (right - left) / 2;
            
            if ([self[mid] integerValue] > [self[mid + 1] integerValue])
            {
                return self[mid + 1];
            }
            
            if ([self[mid - 1] integerValue] > [self[mid] integerValue])
            {
                return self[mid];
            }
            
            if ([self[mid] integerValue] > [self[0] integerValue])
            {
                left = mid + 1;
            } else
            {
                right = mid - 1;
            }
        }
        return nil;
    }
}


@end



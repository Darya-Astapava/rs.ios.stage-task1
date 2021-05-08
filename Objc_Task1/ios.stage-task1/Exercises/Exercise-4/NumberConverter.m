#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (!number)
    {
        return @[];
    }
    
    NSString *stringValue = [[number stringValue] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [stringValue length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[stringValue substringWithRange:subStrRange]];
    }
    
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[reversedString length]];
    for (int i=0; i < [reversedString length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [reversedString characterAtIndex:i]];
        [characters addObject:ichar];
    }
    
    NSArray *arr = [characters copy];
    return arr;
}

@end

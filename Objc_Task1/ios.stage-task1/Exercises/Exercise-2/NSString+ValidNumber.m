#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    NSCharacterSet *numberSet = [NSCharacterSet decimalDigitCharacterSet];
    NSString *trimmedString = [self stringByTrimmingCharactersInSet:numberSet];
    if (self.length >0 && trimmedString.length == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

@end

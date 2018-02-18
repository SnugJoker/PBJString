//
//  NSString+PBJString.m
//  
//
//  Created by Joseph on 18/02/2018.
//
//


#import "NSString+PBJString.h"


@implementation NSString (PBJString)


+(BOOL)isStringNullOrEmpty:(NSString *)string
{
    if ([string isKindOfClass:[NSString class]]) {
        
        if (string) {
            
            if (![string isKindOfClass:[NSNull class]] && ![self isString:string ContainsAnotherString:@"null"]) {
                
                if (![string isEqualToString:@""] && ![string isEqualToString:@" "]) {
                    
                    return NO;
                }
            }
        }
    }
    
    return YES;
}

+(BOOL)isString:(NSString *)primary ContainsAnotherString:(NSString *)secondary
{
    if ([primary isKindOfClass:[NSString class]] && [secondary isKindOfClass:[NSString class]]) {
        
        if ([primary rangeOfString:secondary].location == NSNotFound) {
            
            return NO;
        }
    }
    
    return YES;
}

+(NSString *)returnEmptyStringIfNil:(NSString *)string
{
    if ([self isStringNullOrEmpty:string]) {
        
        return @"";
    }
    
    return [NSString stringWithString:string];
}

+(NSString *)returnStringOfBooleanWord:(BOOL)trueOrFalse
{
    if (trueOrFalse) {
        
        return @"true";
        
    }else {
        
        return @"false";
    }
}

//Removes leading and trailing whitespace.
+(NSString *)trimLeadingAndTrailingWhiteSpacesFromString:(NSString *)string
{
    return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(NSString *)trimNumbersOutOfString:(NSString *)string
{
    return [[string componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""];
}

//Truncates string to specific length.
+(NSString *)truncateString:(NSString *)string toLength:(int)length
{
    //Defines the range.
    NSRange stringRange = {0, MIN([string length], length)};
    
    //Adjusts the range to include dependent characters.
    stringRange = [string rangeOfComposedCharacterSequencesForRange:stringRange];
    
    return [string substringWithRange:stringRange];
}

//Converts the string to UTF8 format.
+(NSString *)stringWithUTF8Format:(NSString *)string
{
    return [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

+(BOOL)isStringContainsOnlyNumbers:(NSString *)string
{
    if (![self isStringNullOrEmpty:string]) {
        
        if ([string rangeOfCharacterFromSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]].location == NSNotFound) {
            
            return YES;
        }
    }
    
    return NO;
}

+(BOOL)isStringContainsAnyNumbers:(NSString *)string
{
    if (![self isStringNullOrEmpty:string]) {
        
        if ([string rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location == NSNotFound) {
            
            return NO;
        }
        
        return YES;
        
    }else {
        
        return NO;
    }
}

+(NSNumber *)convertStringToNumber:(NSString *)string
{
    if (![self isStringNullOrEmpty:string]) {
        
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        
        [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
        
        return [numberFormatter numberFromString:string];
        
    }else {
        
        return nil;
    }
}

+(NSString *)addHTMLRightAlignmentToString:(NSString *)string
{
    return [NSString stringWithFormat:@"<div style=\"text-align: right;\">%@</div>", string];
}

+(NSString *)addHTMLLeftAlignmentToString:(NSString *)string
{
    return [NSString stringWithFormat:@"<div style=\"text-align: left;\">%@</div>", string];
}

+(NSString *)addHTMLCenterAlignmentToString:(NSString *)string
{
    return [NSString stringWithFormat:@"<div style=\"text-align: center;\">%@</div>", string];
}



@end

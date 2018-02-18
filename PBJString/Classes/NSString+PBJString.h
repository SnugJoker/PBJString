//
//  NSString+PBJString.h
//  
//
//  Created by Joseph on 18/02/2018.
//
//


@interface NSString (PBJString)


+(BOOL)isStringNullOrEmpty:(NSString *)string;
+(BOOL)isString:(NSString *)primary ContainsAnotherString:(NSString *)secondary;

+(NSString *)returnEmptyStringIfNil:(NSString *)string;
+(NSString *)returnStringOfBooleanWord:(BOOL)trueOrFalse;

+(NSString *)trimLeadingAndTrailingWhiteSpacesFromString:(NSString *)string;
+(NSString *)trimNumbersOutOfString:(NSString *)string;

+(NSString *)truncateString:(NSString *)string toLength:(int)length;

+(NSString *)stringWithUTF8Format:(NSString *)string;

+(BOOL)isStringContainsOnlyNumbers:(NSString *)string;
+(BOOL)isStringContainsAnyNumbers:(NSString *)string;

+(NSNumber *)convertStringToNumber:(NSString *)string;

+(NSString *)addHTMLRightAlignmentToString:(NSString *)string;
+(NSString *)addHTMLLeftAlignmentToString:(NSString *)string;
+(NSString *)addHTMLCenterAlignmentToString:(NSString *)string;



@end

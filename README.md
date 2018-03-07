# PBJString

[![CI Status](http://img.shields.io/travis/SnugJoker/PBJString.svg?style=flat)](https://travis-ci.org/josephrazon/PBJString)
[![Version](https://img.shields.io/cocoapods/v/PBJString.svg?style=flat)](http://cocoapods.org/pods/PBJString)
[![License](https://img.shields.io/cocoapods/l/PBJString.svg?style=flat)](http://cocoapods.org/pods/PBJString)
[![Platform](https://img.shields.io/cocoapods/p/PBJString.svg?style=flat)](http://cocoapods.org/pods/PBJString)
[![BCH compliance](https://bettercodehub.com/edge/badge/SnugJoker/PBJString?branch=master)](https://bettercodehub.com/)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/JoeRazon)


## Description
NSString class category for more powerful string handling.

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
No requirements needed.

## Installation

PBJString is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PBJString'
```

## How To Use
To use PBJAnimations first import the class:

```objectivec
#import "NSString+PBJString.h"
```

Then simply add one of the methods to your code:

#### Objective C ####

```objectivec
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
```

## Author

Joseph Razon, razonjoe@gmail.com

## License

PBJString is available under the MIT license. See the LICENSE file for more info.

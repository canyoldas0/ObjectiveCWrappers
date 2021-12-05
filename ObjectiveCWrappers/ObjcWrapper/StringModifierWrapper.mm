//
//  StringModifierWrapper.m
//  ObjectiveCWrappers
//
//  Created by Can Yoldas on 5.12.2021.
//

#import "StringModifierWrapper.h"
#import "StringModifier.hpp"

@implementation StringModifierWrapper

StringModifier stringModifier;

-(NSString *)encryptString:(NSString *)str; {
    string strPoint = [str UTF8String];
    string finalString = stringModifier.encryptString(strPoint);
    
    return [NSString stringWithCString:finalString.c_str() encoding:[NSString defaultCStringEncoding]];
}

@end

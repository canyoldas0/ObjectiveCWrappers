//
//  StringModifierWrapper.m
//  ObjectiveCWrappers
//
//  Created by Can Yoldas on 5.12.2021.
//

#import "StringModifierWrapper.h"
#import "StringModifier.hpp"
#import <string>

@implementation StringModifierWrapper

StringModifier stringModifier;

-(NSString*)encryptString:(NSString*)str; {
    string strng = [str UTF8String];
    string finalString = stringModifier.encryptString(strng);
    NSString *result = [NSString stringWithCString: finalString.c_str() encoding:[NSString defaultCStringEncoding]];
    return result;
    
}

-(NSString*)decryptString:(NSString *)str; {
    
    string strng = [str UTF8String];
    string finalString = stringModifier.decryptString(strng);
    NSString *result = [NSString stringWithCString:finalString.c_str() encoding:[NSString defaultCStringEncoding]];
    return result;
}

@end

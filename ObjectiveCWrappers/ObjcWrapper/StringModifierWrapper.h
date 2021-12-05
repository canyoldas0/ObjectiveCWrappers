//
//  StringModifierWrapper.h
//  ObjectiveCWrappers
//
//  Created by Can Yoldas on 5.12.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StringModifierWrapper : NSObject

-(NSString*)encryptString:(NSString*)str;
-(NSString*)decryptString:(NSString*)str;


@end


NS_ASSUME_NONNULL_END

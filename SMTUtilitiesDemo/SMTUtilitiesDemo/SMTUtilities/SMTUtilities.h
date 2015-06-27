//
//  SMTUtilities.h
//  SMTUtilitiesDemo
//
//  Created by Steffi Tan on 6/27/15.
//  Copyright (c) 2015 iamsteffi.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SMTUtilities : NSObject

+(BOOL)isEmpty:(UITextField *)field;
+(BOOL)isNumeric: (UITextField *)field;
+(BOOL)isAlphabets:(UITextField *)field;
+(BOOL)isValidEmail:(NSString *)emailValue;
+(BOOL)isiPhone4;

@end

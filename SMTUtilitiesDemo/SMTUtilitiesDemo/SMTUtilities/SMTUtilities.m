//
//  SMTUtilities.m
//  SMTUtilitiesDemo
//
//  Created by Steffi Tan on 6/27/15.
//  Copyright (c) 2015 iamsteffi.com. All rights reserved.
//

#import "SMTUtilities.h"

@implementation SMTUtilities

+(BOOL)isEmpty:(UITextField *)field{
    
    if([field.text isEqualToString:@""]){
        return  YES;
    }
    
    return NO;
}

+(BOOL)isValidEmail:(NSString *)emailValue{
    
    NSString *regex = @"[^@]+@[A-Za-z0-9.-]+\\.[A-Za-z]+";
    NSPredicate *emailPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    if ([emailPredicate evaluateWithObject:emailValue]){
        return YES;
    }
    
    return NO;
}

+(BOOL)isNumeric:(NSString *)str{
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionCaseInsensitive error:nil];
    NSTextCheckingResult * strRegexResult = [regex firstMatchInString:str options:0 range:NSMakeRange(0, [str length])];
    
    if(strRegexResult){
        return YES;
    }
    
    return NO;
}

+(BOOL)isAlphabets:(UITextField *)field{
    
    NSCharacterSet * alphabets = [[NSCharacterSet characterSetWithCharactersInString:@"-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"] invertedSet];
    
    if([field.text rangeOfCharacterFromSet:alphabets].location == NSNotFound){
        return  YES;
    }
    
    return NO;
}

+(BOOL)isiPhone4{
    if([[UIScreen mainScreen ] bounds ].size.height == 480){
        return YES;
    }
    return NO;
}

@end

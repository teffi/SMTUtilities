//
//  SMTUtilities.m
//  SMTUtilitiesDemo
//
//  Created by Teffi : github.com/teffi/SMTUtilities
//  Copyright (c) 2015 iamsteffi.com
//

#import "SMTUtilities.h"

@implementation SMTUtilities

+(BOOL)isEmpty:(UITextField *)field{
    
    if([field.text isEqualToString:@""]){
        return  YES;
    }
    
    return NO;
}

+(BOOL)isValidEmail:(UITextField *)field{
    NSString * emailValue = field.text;
    NSString *regex = @"[^@]+@[A-Za-z0-9.-]+\\.[A-Za-z]+";
    NSPredicate *emailPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    if ([emailPredicate evaluateWithObject:emailValue]){
        return YES;
    }
    
    return NO;
}

+(BOOL)isNumeric:(UITextField *)field{
    NSString * str = field.text;
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


@end

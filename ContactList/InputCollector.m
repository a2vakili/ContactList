//
//  InputCollector.m
//  ContactList
//
//  Created by Arsalan Vakili on 2015-08-05.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@",promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    return inputString;
}



@end

//
//  InputCollector.h
//  ContactList
//
//  Created by Arsalan Vakili on 2015-08-05.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface InputCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString;

//+(instancetype)contactInformation:(NSString *)string;

@end

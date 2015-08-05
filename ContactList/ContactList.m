//
//  ContactList.m
//  ContactList
//
//  Created by Arsalan Vakili on 2015-08-05.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.contacts addObject:newContact];
}

-(void)displayContacts{
    NSUInteger index = 0;
    for (Contact *contact in self.contacts) {
        NSLog(@"%lu : my contact name:%@ my contact email: %@",(unsigned long)index,contact.name,contact.email);
        index++;
    }
}

@end

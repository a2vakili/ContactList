//
//  ContactList.h
//  ContactList
//
//  Created by Arsalan Vakili on 2015-08-05.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property(nonatomic,strong) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

-(void)displayContacts;

@end

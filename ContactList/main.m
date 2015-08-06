//
//  main.m
//  ContactList
//
//  Created by Arsalan Vakili on 2015-08-05.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
         InputCollector *collector = [[InputCollector alloc]init];
        ContactList *contactList = [[ContactList alloc]init];

        
        while (true) {
            NSString *userString = [collector inputForPrompt:@"What would like to do next?\n new - create a new contact \n list - List All contacts\n quit- Exit application"];
          
            if ([userString isEqualToString:@"quit\n"]) {
                break;
            }
            
            else if ([userString isEqualToString:@"new\n"]){
                
                Contact *contact = [[Contact alloc]init];
                
                NSString *userInputName = [collector inputForPrompt:@"Please enter your contact name?"];
                contact.name = userInputName;
                NSLog(@"the contact first name is %@",contact.name);
                
                NSString *userInputEmail = [collector inputForPrompt:@"Please enter your contact Email?"];
                contact.email = userInputEmail;
                NSLog(@" the contact email address is %@", contact.email);
                [contactList addContact:contact];
                
            }
            
        else if ([userString isEqualToString:@"list\n"]){
            [contactList displayContacts];
       
    }
   
        }
        return 0;
    }
}

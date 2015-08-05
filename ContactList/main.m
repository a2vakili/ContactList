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
        
        Contact *contact1 = [[Contact alloc]init];
        contact1.name = @"james";
        contact1.email = @"james12@gmail.com";
        
        Contact *contact2 = [[Contact alloc]init];
        contact2.name = @"Cory";
        contact2.email = @"cory_alder2020@gmail.com";
        
        
        ContactList *contactList = [[ContactList alloc]init];

        
        while (true) {
            char inputChars[255];
            NSLog(@"What would like to do next?\n new - create a new contact \n list - List All contacts\n quit- Exit application");
            
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            InputCollector *collector = [[InputCollector alloc]init];
            NSString *userString = [collector inputForPrompt:inputString];
          //  NSLog(@"%@",userString);
            
            if ([userString isEqualToString:@"quit\n"]) {
                break;
            }
            
            else if ([userString isEqualToString:@"new\n"]){
                
                Contact *contact = [[Contact alloc]init];
                
                char contactNameString[255];
                char contactEmailString[255];
                NSLog(@"Please input your contact name?");
                fgets(contactNameString, 255, stdin);
                NSString *userInputName = [NSString stringWithUTF8String:contactNameString];
                contact.name = userInputName;
                NSLog(@"the contact first name is %@",contact.name);
                
                
                NSLog(@"Please input your contact email");
                fgets(contactEmailString, 255, stdin);
                NSString *userInputEmail = [NSString stringWithUTF8String:contactEmailString];
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

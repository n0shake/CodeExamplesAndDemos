//
//  AppDelegate.h
//  TokenExample
//
//  Created by Abhishek subhash banthia on 22/08/14.
//  Copyright (c) 2014 Abhishek Banthia. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)actionOnButtonClick:(id)sender;
@property (strong) IBOutlet NSTokenField *tokenFieldOutlet;

@end

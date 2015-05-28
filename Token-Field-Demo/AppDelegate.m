//
//  AppDelegate.m
//  TokenExample
//
//  Created by Abhishek subhash banthia on 22/08/14.
//  Copyright (c) 2014 Abhishek Banthia. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)actionOnButtonClick:(id)sender
{
    NSLog(@"The token field value:%@", [_tokenFieldOutlet stringValue]);
}
@end

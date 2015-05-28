//
//  ViewController.m
//  LoginIntegration
//
//  Created by Abhishek Banthia on 27/03/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize nameLabel, emailLabel, loginStatus, profileImageView, activityIndicator;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.activityIndicator.hidden = YES;

    self.appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginAction:(id)sender
{
    [FBSDKSettings enableLoggingBehavior:FBSDKLoggingBehaviorNetworkRequests];
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me/permissions/public_profile"
                                       parameters:nil
                                       HTTPMethod:@"DELETE"]
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error)
    {
        return;// ...
     }];
    
    if ([FBSDKAccessToken currentAccessToken])
    {
        self.nameLabel.text = [FBSDKProfile currentProfile].name;
        return;
    }
    
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
//    login.loginBehavior = FBSDKLoginBehaviorBrowser;
    
    [login logInWithReadPermissions:@[@"public_profile", @"email", @"user_friends"] handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error || result.isCancelled)
        {
            NSLog(@"Is cancelled");
        }
        else
        {
            NSLog(@"Success");
            self.nameLabel.text = [FBSDKProfile currentProfile].name;
        }
    }];
}

- (void)hideLabels:(BOOL)shouldHide
{
    self.nameLabel.hidden = shouldHide;
    self.emailLabel.hidden = shouldHide;
    self.profileImageView.hidden = shouldHide;
}


@end

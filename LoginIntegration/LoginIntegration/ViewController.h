//
//  ViewController.h
//  LoginIntegration
//
//  Created by Abhishek Banthia on 27/03/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *loginStatus;
- (IBAction)loginAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (strong, nonatomic) AppDelegate *appDelegate;

@end


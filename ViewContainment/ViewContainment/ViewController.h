//
//  ViewController.h
//  ViewContainment
//
//  Created by Abhishek Banthia on 23/03/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Container1ViewController;

@interface ViewController : UIViewController

- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;

@property (strong, nonatomic) Container1ViewController *container1;
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end


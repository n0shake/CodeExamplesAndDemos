//
//  ViewController.m
//  ViewContainment
//
//  Created by Abhishek Banthia on 23/03/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import "ViewController.h"
#import "Container1ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize container1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender
{
    self.container1 = [[Container1ViewController alloc] initWithNibName:@"Container1" bundle:nil];
    
    [self.container1.view layoutIfNeeded];
  
//    aNewViewController.childNumberLabel.text=[NSString stringWithFormat:@"Child Number:  %d",self.childNumber];
    
    self.container1.view.frame=self.containerView.bounds;
    [self.container1 willMoveToParentViewController:nil];
    [self addChildViewController:self.container1];
    
    __weak __block ViewController *weakSelf=self;
    [self transitionFromViewController:self
                      toViewController:self.container1
                              duration:1.0
                               options:UIViewAnimationOptionTransitionCurlUp
                            animations:nil
                            completion:^(BOOL finished) {
                                
                                [weakSelf removeFromParentViewController];
                                [container1 didMoveToParentViewController:weakSelf];
//
//                                weakSelf.currentViewController=[aNewViewController autorelease];
                            }];
}

- (IBAction)button2:(id)sender {
}

- (IBAction)button3:(id)sender {
}
@end

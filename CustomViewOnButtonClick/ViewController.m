//
//  ViewController.m
//  CustomViewOnButtonClick
//
//  Created by Abhishek on 22/03/15.
//  Copyright (c) 2015 Abhishek. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CustomView.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize customView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*This loads a custom view as designed in CustomView.xib*/
- (IBAction)showTransparentView:(id)sender
{
    self.customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil] objectAtIndex:0];
    self.customView.alpha = 0.3;
    [self.customView.submitAction addTarget:self action:@selector(submitButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    self.customView.frame = CGRectMake(40, 178, self.customView.frame.size.width, self.customView.frame.size.height);
    [self.view addSubview:self.customView];
    self.customView.layer.cornerRadius = 20.0f;
    self.customView.layer.borderWidth = 3.0f;
    self.customView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //Animating the transparency.
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];

    self.customView.alpha = 0.9;

    [UIView commitAnimations];
}

/*This removes the superview with animation*/
- (void)submitButtonClicked
{
    if (self.customView)
    {
        [UIView animateWithDuration:1.0
                            animations:^{self.customView.alpha = 0.0;}
                            completion:^
                            (BOOL finished)
                                {
                                        [self.customView removeFromSuperview];
                                }];
    }
    
}
@end

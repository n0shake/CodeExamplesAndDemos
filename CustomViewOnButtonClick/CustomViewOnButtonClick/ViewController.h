//
//  ViewController.h
//  CustomViewOnButtonClick
//
//  Created by Abhishek on 22/03/15.
//  Copyright (c) 2015 Abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomView;

@interface ViewController : UIViewController
- (IBAction)showTransparentView:(id)sender;
@property (strong, nonatomic) IBOutlet CustomView *customView;


@end


//
//  ViewController.h
//  UISearchBarDemo
//
//  Created by Abhishek on 22/03/15.
//  Copyright (c) 2015 Abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UISearchBarDelegate>

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) IBOutlet UISearchBar *mySearchBar;
@property (strong, nonatomic) NSMutableArray *filteredArray;
@property (strong, nonatomic) NSMutableArray *initialArray;
@property (assign) BOOL isFiltered;

@end


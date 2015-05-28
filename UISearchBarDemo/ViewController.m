//
//  ViewController.m
//  UISearchBarDemo
//
//  Created by Abhishek on 22/03/15.
//  Copyright (c) 2015 Abhishek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mySearchBar;
@synthesize myTableView;
@synthesize isFiltered;
@synthesize initialArray;
@synthesize filteredArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView.hidden = YES;
    
    self.initialArray = [[NSMutableArray alloc] initWithObjects:@"Bombay", @"Kuala Lumpur", @"Mangalore", @"Bangalore", @"Mysore", @"London", @"New York", @"Bejing", @"Sydney" , nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.isFiltered)
    {
        return self.filteredArray.count;
    }
   return self.initialArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    cell.textLabel.text = isFiltered ? [self.filteredArray objectAtIndex:indexPath.row] : [self.initialArray objectAtIndex:indexPath.row];
    
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchText.length == 0)
    {
        [self.myTableView setHidden:YES];
        
        self.isFiltered = NO;
    }
    else
    {
        self.myTableView.hidden = NO;
        self.isFiltered = YES;
        
        self.filteredArray = [[NSMutableArray alloc] init];
        
        for (NSString *cityName in self.initialArray)
        {
            NSRange cityNameRange = [cityName rangeOfString:searchText options:NSCaseInsensitiveSearch];
            
            if (cityNameRange.location != NSNotFound)
            {
                [self.filteredArray addObject:cityName];
            }
        }
 
    }

    [self.myTableView reloadData];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.mySearchBar resignFirstResponder];
}


@end

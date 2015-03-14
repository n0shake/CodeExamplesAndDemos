//
//  AppController.m
//  CollectionViewDemo
//
//  Created by Abhishek subhash banthia on 14/07/14.
//  Copyright (c) 2014 Abhishek subhash banthia. All rights reserved.
//

#import "AppController.h"
#import "Student.h"

@implementation AppController

@synthesize students = _students;

-(void)awakeFromNib
{
    Student *s = [[Student alloc] init];
    [s setName:@"Legolas"];
    [s setRating:4];
    _students = [[NSMutableArray alloc] init];
    [arrayController addObject:s];
    
}

@end

//
//  Student.m
//  CollectionViewDemo
//
//  Created by Abhishek subhash banthia on 14/07/14.
//  Copyright (c) 2014 Abhishek subhash banthia. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize name= _name;
@synthesize rating = _rating;

-(id)init
{
   self = [super init];
    if(self)
    {
        _name = @"Narnia";
        _rating = 2;
    }
    
    return self;
    
}

@end

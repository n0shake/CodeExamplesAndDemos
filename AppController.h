//
//  AppController.h
//  CollectionViewDemo
//
//  Created by Abhishek subhash banthia on 14/07/14.
//  Copyright (c) 2014 Abhishek subhash banthia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject
{
    IBOutlet NSArrayController *arrayController;
}
@property (strong) NSMutableArray *students;


@end

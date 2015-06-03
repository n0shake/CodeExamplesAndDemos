//
//  SampleProtocol.m
//  ProtocolDelegateDemo
//
//  Created by Abhishek Banthia on 03/06/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startProcess
{
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate selector:@selector(processCompleted) userInfo:nil repeats:NO];
}

@end

//
//  SampleProtocol.h
//  ProtocolDelegateDemo
//
//  Created by Abhishek Banthia on 03/06/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SampleProtocolDelegate <NSObject>

@required

- (void)processCompleted;

@end


@interface SampleProtocol : NSObject

@property (strong, nonatomic) id<SampleProtocolDelegate> delegate;

- (void)startProcess;

@end

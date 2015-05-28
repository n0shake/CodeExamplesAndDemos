//
//  ViewController.h
//  CoreLocationDemo
//
//  Created by Abhishek Banthia on 20/03/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import  <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (strong, nonatomic) CLGeocoder *geoCoder;
@property (strong, nonatomic) CLLocationManager *manager;
@property (strong, nonatomic) CLPlacemark *placemark;


@end


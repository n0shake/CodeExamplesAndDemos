//
//  ViewController.m
//  CoreLocationDemo
//
//  Created by Abhishek Banthia on 20/03/15.
//  Copyright (c) 2015 Abhishek Banthia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [[CLLocationManager alloc] init];
    self.geoCoder = [[CLGeocoder alloc] init];
    
    self.manager.delegate = self;
    
    if ([CLLocationManager locationServicesEnabled])
    {
        if ([self.manager respondsToSelector:@selector(requestWhenInUseAuthorization)])
        {
            //We don't require background services. Just need data when the app is open

            if([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined)
            {
                [self.manager requestWhenInUseAuthorization];
            }
        }
        else
        {
             [self.manager startUpdatingLocation];
        }
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    if (error)
    {
        NSLog(@"Error:%@", error);
    }
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation* location = [locations lastObject];
    NSDate* eventDate = location.timestamp;
    NSLog(@"Event date:%@", eventDate);
    self.latitudeLabel.text = [NSString stringWithFormat:@"%f", location.coordinate.latitude];
    self.longitudeLabel.text = [NSString stringWithFormat:@"%f", location.coordinate.longitude];
}

-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if(status == kCLAuthorizationStatusAuthorizedAlways || status == kCLAuthorizationStatusAuthorizedWhenInUse)
    {
        [self.manager startUpdatingLocation];
    }
}



@end

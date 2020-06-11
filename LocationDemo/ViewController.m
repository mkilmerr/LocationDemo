//
//  ViewController.m
//  LocationDemo
//
//  Created by Marcos Kilmer on 11/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    locationManager = [[CLLocationManager alloc] init];
    
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = 5.0;
   
    [locationManager requestWhenInUseAuthorization];
    
    if([CLLocationManager authorizationStatus] == kCLAuthorizationStatusAuthorizedWhenInUse){
       
        [locationManager startUpdatingLocation];
        
    }
    
    
    
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    
    if(status == kCLAuthorizationStatusAuthorizedWhenInUse){
        [locationManager startUpdatingLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    float latitude = locations.firstObject.coordinate.latitude;
    float longitude = locations.firstObject.coordinate.longitude;
    
    NSLog(@"%f",latitude);
    NSLog(@"%f",longitude);
}


@end

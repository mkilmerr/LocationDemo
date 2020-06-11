//
//  ViewController.h
//  LocationDemo
//
//  Created by Marcos Kilmer on 11/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocation/CoreLocation.h"

@interface ViewController : UIViewController<CLLocationManagerDelegate>{
    CLLocationManager *locationManager;

}



@end


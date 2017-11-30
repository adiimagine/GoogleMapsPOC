//
//  ViewController.m
//  GoogleMapsPOC
//
//  Created by arvinds on 11/30/17.
//  Copyright © 2017 arvinds. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate 40.5,-122.1.
    const CLLocationCoordinate2D cameraPos = CLLocationCoordinate2DMake(37.4, -122.1);
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:cameraPos.latitude
                                                            longitude:cameraPos.longitude
                                                                 zoom:10];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    self.view = mapView;
    
    // Create a rectangular overlay
    GMSMutablePath *path = [GMSMutablePath path];
    [path addCoordinate:CLLocationCoordinate2DMake(37.36, -122.0)];
    [path addCoordinate:CLLocationCoordinate2DMake(37.45, -122.0)];
    [path addCoordinate:CLLocationCoordinate2DMake(37.45, -122.2)];
    [path addCoordinate:CLLocationCoordinate2DMake(37.36, -122.2)];
    [path addCoordinate:CLLocationCoordinate2DMake(37.36, -122.0)];
    
    GMSPolygon *rectangle = [GMSPolygon polygonWithPath:path];
    rectangle.map = mapView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

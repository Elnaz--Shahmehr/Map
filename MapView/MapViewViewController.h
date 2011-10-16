//
//  MapViewViewController.h
//  MapView
//
//  Created by Elnaz Shahmehr on 10/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewViewController : UIViewController{
    MKMapView *mapview;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;
-(IBAction)setMap:(id)sender;
-(IBAction)getlocation;

@end

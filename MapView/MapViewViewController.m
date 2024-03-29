//
//  MapViewViewController.m
//  MapView
//
//  Created by Elnaz Shahmehr on 10/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MapViewViewController.h"

@implementation MapViewViewController
@synthesize  mapview;

-(IBAction)getlocation {
    mapview.showsUserLocation = YES;
}

-(IBAction)setMap:(id)sender {
    switch (((UISegmentedControl *) sender).selectedSegmentIndex){
        case 0:
        mapview.mapType = MKMapTypeStandard;
            break;
    case 1:
        mapview.mapType = MKMapTypeSatellite;
        break;
    case 2:
        mapview.mapType = MKMapTypeHybrid;
        break;
        
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

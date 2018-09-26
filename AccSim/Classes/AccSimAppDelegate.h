//
//  AccSimAppDelegate.h
//  AccSim
//
//  Created by Otto Chrons on 9/24/08.
//  Copyright Enzymia Ltd. 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccelerometerViewController;
@class NetworkView;
@class ControllerViewController;

@interface AccSimAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    IBOutlet UIWindow *window;
    IBOutlet UITabBarController *tabBarController;

	AccelerometerViewController *accelerometerViewController;
	NetworkView *networkView;
    ControllerViewController *controllerView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet AccelerometerViewController *accelerometerViewController;
@property (nonatomic, retain) IBOutlet NetworkView *networkView;
@property (nonatomic, retain) IBOutlet ControllerViewController *controllerView;

@end

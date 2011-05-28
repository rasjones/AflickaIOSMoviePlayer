//
//  NGMoviePlayerDemoAppDelegate.h
//  NGMoviePlayerDemo
//
//  Created by Brent Simmons on 8/18/10.
//  Copyright NewsGator Technologies, Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NGMoviePlayerDemoViewController;

@interface NGMoviePlayerDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NGMoviePlayerDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NGMoviePlayerDemoViewController *viewController;

@end


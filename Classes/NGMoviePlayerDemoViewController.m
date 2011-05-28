//
//  NGMoviePlayerDemoViewController.m
//  NGMoviePlayerDemo
//
//  Created by Brent Simmons on 8/18/10.
//  Copyright NewsGator Technologies, Inc. 2010. All rights reserved.
//

#import "NGMoviePlayerDemoViewController.h"


@implementation NGMoviePlayerDemoViewController

/*Just to have a sample, linking to a Blue Brothers trailer.*/

- (IBAction)playMovie:(id)sender {
	NGMoviePlayerViewController *aMoviePlayerViewController = [[[NGMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:@"http://trailers.apple.com/movies/universal/bluesbrothers/bluesbrothers-tlr1b_r640s.mov"] delegate:self] autorelease];
	aMoviePlayerViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:aMoviePlayerViewController animated:YES];
}


#pragma mark NGMoviePlayerDelegate

- (void)ngMoviePlayerDidFinish:(NGMoviePlayerViewController *)ngMoviePlayerViewController {
	NSError *error = ngMoviePlayerViewController.movieError;
	if (error != nil)
		NSLog(@"There was an error playing the movie: %@", error);
	[self dismissModalViewControllerAnimated:YES];
}


@end

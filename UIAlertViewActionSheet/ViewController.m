//
//  ViewController.m
//  UIAlertViewActionSheet
//
//  Created by Sravan Kumar Peddi on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"UIAlertView" message:@"Wlcome to UIAlertView" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"add",@"edit",nil];

    
    
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
 
    NSLog(@"clickedButtonAtIndex");
    if (buttonIndex==0) {
        NSLog(@"Cancel Pressed");
    }
    else if (buttonIndex==1) {
        NSLog(@"Add Pressed");
    }
    else if (buttonIndex==2) {
        NSLog(@"Edit Pressed");
    }


}
/*-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"didDismissWithButtonIndex");
    
    if (buttonIndex==0) {
        NSLog(@"Cancel Pressed");
    }
    else if (buttonIndex==1) {
        NSLog(@"Add Pressed");
    }
    else if (buttonIndex==2) {
        NSLog(@"Edit Pressed");
    }
    

}


-(void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"willDismissWithButtonIndex:");
    if (buttonIndex==0) {
        NSLog(@"Cancel Pressed");
    }
    else if (buttonIndex==1) {
        NSLog(@"Add Pressed");
    }
    else if (buttonIndex==2) {
        NSLog(@"Edit Pressed");
    }
    

}*/
-(void)willPresentAlertView:(UIAlertView *)alertView
{
    NSLog(@"willPresentAlertView");
}
-(void)didPresentAlertView:(UIAlertView *)alertView
{
 NSLog(@"didPresentAlertView");

}
-(void)alertViewCancel:(UIAlertView *)alertView
{


}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

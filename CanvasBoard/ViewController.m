//
//  ViewController.m
//  CanvasBoard
//
//  Created by Gaurav Toshniwal on 12/01/12.
//  Copyright (c) 2012 gauravtoshniwal1989@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import "ViewElements.h"

@implementation ViewController

@synthesize accessView;
@synthesize leftView;
@synthesize toolBarHandle;

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
    CGRect screenBounds = [ [ UIScreen mainScreen ] applicationFrame ]; 
    accessView = [[ViewElements alloc] init];
    self.view = [accessView initView:screenBounds withBackground:[UIColor whiteColor]];
    leftView = [accessView initView:CGRectMake(0, 0, screenBounds.size.width/10 + 20, screenBounds.size.height) withBackground:[UIColor colorWithRed:255/255.0 green:127/255.0 blue:80/255.0 alpha:0.7]];
    [self.view addSubview:leftView];
    
    toolBarHandle = [accessView initView:CGRectMake(screenBounds.size.width/10, 0, 20, screenBounds.size.height) withBackground:[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.5]];
    UIButton *circleButton = [accessView createButton:CGRectMake(5, 5, screenBounds.size.width/10 - 10, 25) withText:@"Circle"];
    
    [leftView addSubview:circleButton];
    [leftView addSubview:toolBarHandle];
    
}

-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event //here enable the touch       
{
    // get touch event
    
    UITouch *touch = [[event allTouches] anyObject];
    
    CGPoint touchLocation = [touch locationInView:leftView];
    if (CGRectContainsPoint(toolBarHandle.frame, touchLocation))
    {
        CGRect screenBounds = [ [ UIScreen mainScreen ] applicationFrame ];
        if(leftView.frame.origin.x == 0)
        {
        CGRect toolBarBounds = CGRectMake(-screenBounds.size.width/10, 0, screenBounds.size.width/10+20, screenBounds.size.height);
        [UIView beginAnimations:nil context:NULL]; // animate the following:
        leftView.frame = toolBarBounds; // move to new location
        [UIView setAnimationDuration:5.0];
        [UIView commitAnimations];
        }
        else
        {
        CGRect toolBarBounds = CGRectMake(0, 0, screenBounds.size.width/10+20, screenBounds.size.height);
        [UIView beginAnimations:nil context:NULL]; // animate the following:
        leftView.frame = toolBarBounds; // move to new location
        [UIView setAnimationDuration:5.0];
        [UIView commitAnimations];
        }
    }
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
    return YES;
}

@end

//
//  ViewController.h
//  CanvasBoard
//
//  Created by Gaurav Toshniwal on 12/01/12.
//  Copyright (c) 2012 gauravtoshniwal1989@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/CAAnimation.h>
#import "ViewElements.h"
#import "CircleView.h"

@interface ViewController : UIViewController{
    
	ViewElements *accessView;
	UIView *leftView;
    UIView *toolBarHandle;
    UIView *circleView;
    UIButton *circleButton;
    CGPoint origin;
    BOOL buttonState;
}
-(void)updateCircle:(CGPoint) movedTo;
@property(nonatomic,retain) ViewElements *accessView;
@property(nonatomic,retain) UIView *leftView;
@property(nonatomic,retain) UIView *toolBarHandle;
@property(nonatomic,retain) UIView *circleView;

@end

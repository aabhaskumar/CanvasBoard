//
//  CircleView.h
//  CanvasBoard
//
//  Created by Gaurav Toshniwal on 13/01/12.
//  Copyright (c) 2012 gauravtoshniwal1989@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/CAAnimation.h>
#import "ViewController.h"
#import <math.h>

@class ViewController;
@interface CircleView : UIView{
    UIView *circleView;
    CGPoint origin;
    CGFloat radius;
    
}

@property(nonatomic,retain)UIView *circleView;

-(void)loadCircle;
-(void)updateCircle:(CGPoint) movedTo;
@end

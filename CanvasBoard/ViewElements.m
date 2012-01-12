//
//  NSObject+ViewElements.m
//  CanvasBoard
//
//  Created by Gaurav Toshniwal on 12/01/12.
//  Copyright (c) 2012 gauravtoshniwal1989@gmail.com. All rights reserved.
//

#import "ViewElements.h"
#import <UIKit/UIColor.h>

@implementation ViewElements

//-----Synthesize----
@synthesize button;

//------Method Implementations----

//------initView-----
-(UIView *)initView:(CGRect)rect withBackground:(UIColor *)color
{   
    UIView *tempView = [[UIView alloc] initWithFrame:rect];
    tempView.backgroundColor = color;
    return tempView;
}

-(UIButton *)createButton:(CGRect)rect withText:(NSString *)text;
{
    button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame = rect;
	[button setTitle:text forState:UIControlStateNormal];
	[button setFont:[UIFont systemFontOfSize:20.0]];
    button.backgroundColor = [UIColor colorWithRed:139/255.0 green:62/255.0 blue:47/255.0 alpha:1.0];
    
    return button;
}


@end

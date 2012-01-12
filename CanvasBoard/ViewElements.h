//
//  NSObject+ViewElements.h
//  CanvasBoard
//
//  Created by Gaurav Toshniwal on 12/01/12.
//  Copyright (c) 2012 gauravtoshniwal1989@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ViewElements: UIView{
    
//------Class variables-----    
    UIButton *button;
}

//-----Properties------
@property(nonatomic,retain)UIButton *button;

//-----Methods-------
-(UIView *)initView:(CGRect)rect withBackground:(UIColor *)color;
-(UIButton *)createButton:(CGRect)rect withText:(NSString *)text;

@end

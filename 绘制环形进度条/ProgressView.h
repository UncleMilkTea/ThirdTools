//
//  ProgressView.h
//
//
//  Created by suger on 16/4/26.
//  Copyright © 2016年 suger. All rights reserved.
//  进度条

#import <UIKit/UIKit.h>

@interface ProgressView : UIView
//! 进度
@property (nonatomic, assign) CGFloat value;
//! 半径
@property (nonatomic, assign) CGPoint radius;
//! 线宽
@property (nonatomic, assign) CGPoint lineWidth;
//! 线色
@property(strong,nonatomic) UIColor *lineColor;
@end

//
//  ProgressView.m
//
//
//  Created by suger on 16/4/26.
//  Copyright © 2016年 suger. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void)setValue:(CGFloat)value {
    _value = value;
    // 重绘
    [self setNeedsDisplay];
}
#pragma mark - 绘制进度
- (void)drawRect:(CGRect)rect {
     //设置线条颜色
    UIColor *color = _lineColor;
    [color set];
    // 获取上下文
    CGContextRef cxtRef = UIGraphicsGetCurrentContext();
    // 设置起始角度
    CGFloat startA = -M_PI_2;
    // 结束角度
    CGFloat endA = self.value * M_PI * 2 - M_PI_2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:_radius radius:rect.size.width * 0.5 startAngle:startA endAngle:endA clockwise:YES];
    
    [path addLineToPoint:_radius];
    // 非零绕数原则留出空心圆
    UIBezierPath *path2 = [UIBezierPath bezierPathWithArcCenter:_radius radius:rect.size.width * 0.5 - _lineWidth startAngle:endA endAngle:startA clockwise:NO];
    
    [path2 addLineToPoint:_radius];
    
    CGContextAddPath(cxtRef, path2.CGPath);
    // 添加到图形上下文
    CGContextAddPath(cxtRef, path.CGPath);
    // 渲染
    CGContextDrawPath(cxtRef, kCGPathFill);
}
@end

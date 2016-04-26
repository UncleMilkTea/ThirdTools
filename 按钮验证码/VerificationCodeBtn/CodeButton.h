//
//  CodeButton.h
//  XiangYangWuXian
//
//  Created by yu Andy on 14-10-9.
//  Copyright (c) 2014年 LongYu coltd By Robin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CodeButton : UIButton

@property (nonatomic, assign) NSInteger seconde;
@property (nonatomic, strong) NSTimer* timeer;
+ (instancetype)buttonWithType:(UIButtonType)buttonType;
- (void)resetTimerAndFire;
@end
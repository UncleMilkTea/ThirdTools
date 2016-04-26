//
//  AuthcodeView.h
//  srd
//
//  Created by p2p on 16/4/13.
//  Copyright © 2016年 shengrongdai. All rights reserved.
//  本地动态验证码

#import <UIKit/UIKit.h>

@class AuthcodeView;

@protocol authcodeViewDeleagte <NSObject>

-(void)selectAuthcodeView:(AuthcodeView *)view;

@end


@interface AuthcodeView : UIView

@property (strong, nonatomic) NSArray *dataArray;//字符素材数组

@property (strong, nonatomic) NSMutableString *authCodeStr;//验证码字符串

@property (nonatomic, weak) id<authcodeViewDeleagte> delgate;

@end

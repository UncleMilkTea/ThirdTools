//
//  DeviceInfo.h
//  srd
//
//  Created by iMac on 16/4/25.
//  Copyright © 2016年 shengrongdai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeviceInfo : NSObject
// 单例
+ (instancetype)sharedDeviceInfo;
//! 获取UUID
- (NSString *)identifier;
//! 获取手机别名
- (NSString *)phoneName;
//! 手机型号
- (NSString *)phoneModel;
//! 手机系统版本
- (NSString *)phoneVersion;
//! 设备版本
- (NSString*)deviceVersion;
@end

# ThirdTools
第三方工具类

# 获取设备信息

- 需要导入Security.framework
- 需要给KeychainItemWrapper.m 添加-fno-objc-arc


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
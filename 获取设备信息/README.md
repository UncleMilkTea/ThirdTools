# ThirdTools
第三方工具类

# 获取设备信息

- 需要导入Security.framework
- 需要给KeychainItemWrapper.m 添加-fno-objc-arc



+ (instancetype)sharedDeviceInfo;
//! 单例
- (NSString *)identifier;
//! 获取UUID
- (NSString *)phoneModel;
//! 获取手机别名
- (NSString *)phoneName;
//! 手机型号
- (NSString *)phoneVersion;
//! 手机系统版本
- (NSString*)deviceVersion;
//! 设备版本



## Author

Weibo:[@老实人要刨你家祖坟了](http://weibo.com/caoeggs)

Github:[houyukun](https://github.com/houyukun) 
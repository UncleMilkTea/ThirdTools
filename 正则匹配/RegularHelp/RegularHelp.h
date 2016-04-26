//
//  RegularHelp.h
//

#import <Foundation/Foundation.h>

@interface RegularHelp : NSObject

//! 数组匹配
+ (BOOL) validateUserAge:(NSString *)str;
//! 检验邮箱
+ (BOOL) validateUserEmail:(NSString *)str;
//! 检验手机号
+ (BOOL) validateUserPhone:(NSString *)str;
//! 验证是否为正数
+ (BOOL) validatePositiveNumber:(NSString *)str;
//! 验证是否是负数
+ (BOOL) validateNegativeNumber:(NSString *)str;
//! ^(\d*\.)?\d+$/
+ (BOOL) validateMoney:(NSString *)str;
//! URL验证
+ (BOOL) validateURL:(NSString *)str;
//! 匹配由数字、26个英文字母或者下划线组成的字符串
+ (BOOL) validateNumAndLetter:(NSString *)str;
//! 验证邮编
+ (BOOL) validatePostcode:(NSString *)str;
//! 日期验证YYYY-MM-DD
+ (BOOL) validateDate:(NSString *)str;
//! QQ验证
+ (BOOL)validateQQ:(NSString *)str;
//! IP验证
+ (BOOL) validateIP:(NSString *)str;
//! 车牌号验证
+ (BOOL) validateCarNo:(NSString *)carNo;
//! 车型
+ (BOOL) validateCarType:(NSString *)CarType;
//! 用户名
+ (BOOL) validateUserName:(NSString *)name;
//! 密码
+ (BOOL) validatePassword:(NSString *)passWord;
//! 昵称
+ (BOOL) validateNickname:(NSString *)nickname;
//! 身份证号
+ (BOOL) validateIdentityCard: (NSString *)identityCard;


@end

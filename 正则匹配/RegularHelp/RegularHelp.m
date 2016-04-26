//
//  RegularHelp.m
//

#import "RegularHelp.h"

@implementation RegularHelp

+ (BOOL) validateUserAge:(NSString *)str {
    
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"^[0-9]{1,2}$"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}



//检验邮箱格式
+ (BOOL) validateUserEmail:(NSString *)str
{
    NSRegularExpression * regularexpression = [[NSRegularExpression alloc]
                                               initWithPattern:@"\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"
                                               options:NSRegularExpressionCaseInsensitive
                                               error:nil];
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}

//校验用户手机号码
+ (BOOL) validateUserPhone:(NSString *)str
{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"^1[3|4|5|8|7][0-9][0-9]{8}$"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
    
    
}


//验证是否是正数
+ (BOOL) validatePositiveNumber:(NSString *)str
{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,2})?$"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//验证是否是负数
+ (BOOL) validateNegativeNumber:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"^[1-9]\\d*|0$"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//验证邮编
+ (BOOL) validatePostcode:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"[0-9]\\d{5}(?!\\d)"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//匹配由数字、26个英文字母或者下划线组成的字符串
+ (BOOL) validateNumAndLetter:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"[0-9]\\d{5}(?!\\d)"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//日期验证YYYY-MM-DD
+ (BOOL) validateDate:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//URL验证
+ (BOOL) validateURL:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"[a-zA-z]+://[^s]*"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//IP验证
+ (BOOL) validateIP:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"d+.d+.d+.d+"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}
//QQ验证
+ (BOOL)validateQQ:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"[1-9][0-9]{4,}"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}

//
+ (BOOL) validateMoney:(NSString *)str{
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"^([0-9]*[.])?[0-9]+$"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:str
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, str.length)];
    
    if(numberofMatch > 0)
    {
        return YES;
    }
    
    return NO;
}

//车牌号验证
+ (BOOL) validateCarNo:(NSString *)carNo
{
    NSString *carRegex = @"^[\u4e00-\u9fa5]{1}[a-zA-Z]{1}[a-zA-Z_0-9]{4}[a-zA-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    NSLog(@"carTest is %@",carTest);
    return [carTest evaluateWithObject:carNo];
}
//车型
+ (BOOL) validateCarType:(NSString *)CarType
{
    NSString *CarTypeRegex = @"^[\u4E00-\u9FFF]+$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",CarTypeRegex];
    return [carTest evaluateWithObject:CarType];
}
//用户名
+ (BOOL) validateUserName:(NSString *)name
{
    NSString *userNameRegex = @"^[A-Za-z0-9]{6,20}+$";
    NSPredicate *userNamePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",userNameRegex];
    BOOL B = [userNamePredicate evaluateWithObject:name];
    return B;
}
//密码
+ (BOOL) validatePassword:(NSString *)passWord
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:passWord];
}
//昵称
+ (BOOL) validateNickname:(NSString *)nickname
{
    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{4,8}$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    return [passWordPredicate evaluateWithObject:nickname];
}
//身份证号
+ (BOOL) validateIdentityCard: (NSString *)identityCard
{
    BOOL flag;
    if (identityCard.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:identityCard];
}

@end











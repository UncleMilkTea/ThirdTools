//
//  CreateQRCode.h
//  srd
//
//  Created by iMac on 16/6/22.
//  Copyright © 2016年 shengrongdai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CreateQRCode : NSObject
/**
 *  快速创建二维码
 *
 *  @param string    二维码内容
 *  @param imageName 中间占位图
 *  @param color     二维码颜色
 *
 *  @return 返回二维码图片
 */
+ (UIImage *)CreateQRCodeWithContent:(NSString *)string andCenterImage:(NSString *)imageName andColor:(CIColor *)color;
@end

//
//  CreateQRCode.m
//  srd
//
//  Created by iMac on 16/6/22.
//  Copyright © 2016年 shengrongdai. All rights reserved.
//

#import "CreateQRCode.h"

@implementation CreateQRCode

+ (UIImage *)CreateQRCodeWithContent:(NSString *)string andCenterImage:(NSString *)imageName andColor:(CIColor *)color{
    
    //创建二维码过滤器
    CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    
    [qrFilter setDefaults];
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    [qrFilter setValue:data forKey:@"inputMessage"];
    
    CIImage *ciImage =  qrFilter.outputImage;
    
    if (color) {
    //创建颜色过滤器
        CIFilter *colorFilter = [CIFilter filterWithName:@"CIFalseColor"];
    
        [colorFilter setDefaults];
    /*
     inputImage   要画颜色的图片
     inputColor0  前景色
     inputColor1  背景色
     */
        [colorFilter setValue:ciImage forKey:@"inputImage"];
    //必须要使用CIColor
        [colorFilter setValue:color forKey:@"inputColor0"];
    
        ciImage = colorFilter.outputImage;
    }

        ciImage = [ciImage imageByApplyingTransform:CGAffineTransformMakeScale(9, 9)];
    // 二维码的图片
    UIImage *qrImage = [UIImage imageWithCIImage:ciImage];
    
    if (imageName) {
        
        UIImage *centerImage = [UIImage imageNamed:imageName];
        
        UIGraphicsBeginImageContext(qrImage.size);
        
        [qrImage drawInRect:CGRectMake(0, 0, qrImage.size.width, qrImage.size.height)];
       
        CGFloat centerImageW = 60;
        CGFloat centerImageX = (qrImage.size.width - centerImageW) * 0.5;
        CGFloat centerImageY = (qrImage.size.height - centerImageW) * 0.5;
        [centerImage drawInRect:CGRectMake(centerImageX, centerImageY, centerImageW, centerImageW)];
        
        UIImage *finalImage = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        return finalImage;
        
    }else{
        return qrImage;
    }
}

@end

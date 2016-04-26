//
//  UIImage+Extension.m
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)resizedImage:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}

- (UIImage *)scaleToWidth:(CGFloat)width{
    
//    if (self.size.width <= 600){
//        
//        return self;
//    }
    
    //根据传入的宽度计算出输出高度
    CGFloat height = width * self.size.height / self.size.width;
    
    CGRect rect = CGRectMake(0, 0, width, height);

    //开启上下文
    UIGraphicsBeginImageContext(rect.size);
    
    //绘图
    [self drawInRect:rect];
    
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    //关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end

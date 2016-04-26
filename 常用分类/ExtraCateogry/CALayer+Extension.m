//
//  CALayer+Extension.h
//

#import "CALayer+Extension.h"
#import <objc/runtime.h>

@implementation CALayer (Extension)

- (UIColor *)borderColorFromUIColor {
    return objc_getAssociatedObject(self, @selector(borderColorFromUIColor));
}
-(void)setBorderColorFromUIColor:(UIColor *)color
{
    objc_setAssociatedObject(self, @selector(borderColorFromUIColor), color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setBorderColorFromUI:color];
}
- (void)setBorderColorFromUI:(UIColor *)color
{
    self.borderColor = color.CGColor;
}


@end

//
//  UIButton+Extension.m
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

- (void)setHighlightedTitle:(NSString *)highlightedTitle
{
    [self setTitle:highlightedTitle forState:UIControlStateHighlighted];
}

- (NSString *)highlightedTitle
{
    return nil;
}

- (void)setTitleColor:(UIColor *)titleColor
{
    [self setTitleColor:titleColor forState:UIControlStateNormal];
}

- (UIColor *)titleColor
{
    return nil;
}

- (void)setHighlightedTitleColor:(UIColor *)highlightedTitleColor
{
    [self setTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];
}

- (UIColor *)highlightedTitleColor
{
    return nil;
}

- (void)setSelectedTitleColor:(UIColor *)selectedTitleColor
{
    [self setTitleColor:selectedTitleColor forState:UIControlStateSelected];
}

- (UIColor *)selectedTitleColor
{
    return nil;
}

- (void)setTitle:(NSString *)title
{
    [self setTitle:title forState:UIControlStateNormal];
}

- (NSString *)title
{
    return [self titleForState:UIControlStateNormal];
}

- (void)setSelectedTitle:(NSString *)selectedTitle
{
    [self setTitle:selectedTitle forState:UIControlStateSelected];
}

- (NSString *)selectedTitle
{
    return [self titleForState:UIControlStateSelected];
}

- (void)setImage:(NSString *)image
{
    [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
}

- (NSString *)image
{
    return nil;
}

- (void)setHighlightedImage:(NSString *)image
{
    [self setImage:[UIImage imageNamed:image] forState:UIControlStateHighlighted];
}

- (NSString *)highlightedImage
{
    return nil;
}

- (void)setSelectedImage:(NSString *)image
{
    [self setImage:[UIImage imageNamed:image] forState:UIControlStateSelected];
}

- (NSString *)selectedImage
{
    return nil;
}

- (void)setBgImage:(NSString *)image
{
    [self setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
}

- (NSString *)bgImage
{
    return nil;
}

- (void)setHighlightedBgImage:(NSString *)image
{
    [self setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateHighlighted];
}

- (NSString *)highlightedBgImage
{
    return nil;
}

- (void)setSelectedBgImage:(NSString *)image
{
    [self setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateSelected];
}

- (NSString *)selectedBgImage
{
    return nil;
}

- (void)addTarget:(id)target action:(SEL)action
{
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

- (void)countDown{
    
    self.enabled = NO;
    
    NSTimer *myTimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timerFired:)userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:myTimer forMode:NSDefaultRunLoopMode];
    
}

#pragma mark - 获取验证码倒计时
- (void)timerFired:(NSTimer *)timer{
    
    static int minite = 61;  minite--;
    
    [self setTitle:[NSString stringWithFormat:@"重新获取%ds",minite] forState:UIControlStateDisabled];
    
    if (minite == 0) {
        
        [timer invalidate];
        
        [self setTitle:[NSString stringWithFormat:@"重新获取"] forState:UIControlStateDisabled];
        
        self.enabled = YES;
        
        minite = 61;
    }
}
@end

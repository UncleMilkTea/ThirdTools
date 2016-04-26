//
//  CodeButton.m
//

#import "CodeButton.h"

@implementation CodeButton
+ (instancetype)buttonWithType:(UIButtonType)buttonType
{
    CodeButton* b = [super buttonWithType:buttonType];
    [b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b setTitle:@"获取验证码" forState:UIControlStateNormal];
    [b setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [b setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    b.titleLabel.font=[UIFont systemFontOfSize:15.f];
    b.layer.cornerRadius = 5;
    b.layer.masksToBounds =YES;
    b.backgroundColor=[UIColor whiteColor];
    return b;
}

- (void)resetTimerAndFire
{
    _timeer=nil;
    if (!_timeer) {
        _seconde=60;
        _timeer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
    }
}

- (void)setSeconde:(NSInteger)seconde
{
    _seconde = seconde;
    if (_seconde>0) {
        self.enabled = NO;
        [self setNeedsLayout];
        //[self setNeedsDisplay];
        [self setTitle:[NSString stringWithFormat:@"再次发送(%ld)",(long)seconde] forState:UIControlStateNormal];
    }
    else
    {
        [_timeer invalidate];
        _seconde = 60;
        self.enabled = YES;
        [self setNeedsLayout];
        //[self setNeedsDisplay];
        [self setTitle:[NSString stringWithFormat:@"重新发送"] forState:UIControlStateNormal];
    }
    
}

- (void)update{
    self.seconde--;
}

@end

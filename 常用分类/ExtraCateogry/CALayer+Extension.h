//
//  CALayer+Extension.h
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CALayer (Extension)

@property(nonatomic, strong) UIColor *borderColorFromUIColor;
- (void)setBorderColorFromUIColor:(UIColor *)color;

@end

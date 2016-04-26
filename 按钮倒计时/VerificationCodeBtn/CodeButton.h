//
//  CodeButton.h
//

#import <UIKit/UIKit.h>

@interface CodeButton : UIButton

@property (nonatomic, assign) NSInteger seconde;
@property (nonatomic, strong) NSTimer* timeer;
+ (instancetype)buttonWithType:(UIButtonType)buttonType;
- (void)resetTimerAndFire;
@end
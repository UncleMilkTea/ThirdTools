//
//  NSString+Extention.h
//  Copyright © 2015年. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extention)
/**
 *  返回字符串的SIZE
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;
- (CGSize)sizeWithfont:(UIFont*)font MaxX:(CGFloat)maxx;
- (CGSize)sizeWithfont:(UIFont*)font;
- (NSInteger)Filesize;
@end

//
//  UIColor+Extension.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extension)

+ (UIColor *)colorWithRGBHex:(NSUInteger)hexRGB alpha:(CGFloat)alpha;

+ (UIColor *)randomColor;

+ (UIColor *)randomColor:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END

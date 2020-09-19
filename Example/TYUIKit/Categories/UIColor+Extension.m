//
//  UIColor+Extension.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *)colorWithRedHex:(NSInteger)red
                    greenHex:(NSInteger)green
                     blueHex:(NSInteger)blue
                       alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:(CGFloat)red / (CGFloat)0xFF
                           green:(CGFloat)green / (CGFloat)0xFF
                            blue:(CGFloat)blue / (CGFloat)0xFF
                           alpha:alpha];
}

+ (UIColor *)colorWithRGBHex:(NSUInteger)hexRGB alpha:(CGFloat)alpha {
    NSUInteger hex1 = hexRGB & 0x0000FF;
    NSUInteger hex2 = (hexRGB >> 8) & 0x0000FF;
    NSUInteger hex3 = (hexRGB >> 16) & 0x0000FF;
    return [self colorWithRedHex:hex3 greenHex:hex2 blueHex:hex1 alpha:alpha];
}

+ (UIColor *)randomColor {
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );               //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}
+ (UIColor *)randomColor:(CGFloat)alpha {
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );               //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:alpha];
}

@end

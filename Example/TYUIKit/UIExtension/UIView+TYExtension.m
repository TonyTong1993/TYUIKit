//
//  UIView+TYExtension.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "UIView+TYExtension.h"

@implementation UIView (TYExtension)

- (CGFloat)mcu_originX
{
    return self.frame.origin.x;
}

- (void)setMcu_originX:(CGFloat)originX
{
    CGRect frame = self.frame;
    frame.origin.x = originX;
    self.frame = frame;
    return;
}

- (CGFloat)tyu_originY
{
    return self.frame.origin.y;
}

- (void)setTyu_originY:(CGFloat)originY
{
//    if (VALID_NAN(originY)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.origin.y = originY;
    self.frame = frame;
}



- (CGFloat)mcu_rightX
{
    return [self mcu_originX] + [self mcu_width];
}

- (void)setMcu_rightX:(CGFloat)rightX
{
//    if (VALID_NAN(rightX)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.origin.x = rightX - [self mcu_width];
    self.frame = frame;
    return;
}

- (CGFloat)mcu_bottomY
{
    return [self tyu_originY] + [self mcu_height];
}

- (void)setMcu_bottomY:(CGFloat)bottomY
{
//    if (VALID_NAN(bottomY)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.origin.y = bottomY - [self mcu_height];
    self.frame = frame;
    return;
}

- (CGFloat)mcu_centerX
{
    return self.center.x;
}

- (void)setMcu_centerX:(CGFloat)centerX
{
//    if (VALID_NAN(centerX)) {
//        return;
//    }
    self.center = CGPointMake(centerX, self.center.y);
    return;
}

- (CGFloat)mcu_centerY
{
    return self.center.y;
}

- (void)setMcu_centerY:(CGFloat)centerY
{
//    if (VALID_NAN(centerY)) {
//        return;
//    }
    self.center = CGPointMake(self.center.x, centerY);
    return;
}

- (CGFloat)mcu_width
{
    return self.frame.size.width;
}

- (void)setMcu_width:(CGFloat)width
{
//    if (VALID_NAN(width)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    return;
}

- (CGFloat)mcu_height
{
    return self.frame.size.height;
}

- (void)setMcu_height:(CGFloat)height
{
//    if (VALID_NAN(height)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    return;
}

- (CGPoint)mcu_origin
{
    return self.frame.origin;
}

- (void)setMcu_origin:(CGPoint)origin
{
//    if (VALID_NAN_POINT(origin)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
    return;
}

- (CGSize)mcu_size
{
    return self.frame.size;
}

- (void)setMcu_size:(CGSize)size
{
//    if (VALID_NAN_SIZE(size)) {
//        return;
//    }
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
    return;
}


- (CGFloat)mcu_safeAreaTop {
    CGFloat top = 0;
    if (@available(iOS 11.0, *)) {
        top = self.safeAreaInsets.top;
    }
    return top;
}

- (CGFloat)mcu_safeAreaLeft {
    CGFloat left = 0;
    if (@available(iOS 11.0, *)) {
        left = self.safeAreaInsets.left;
    }
    return left;
}

- (CGFloat)mcu_safeAreaBottom {
    CGFloat bottom = 0;
    if (@available(iOS 11.0, *)) {
        bottom = self.safeAreaInsets.bottom;
    }
    return bottom;
}

- (CGFloat)mcu_safeAreaRight {
    CGFloat right = 0;
    if (@available(iOS 11.0, *)) {
        right = self.safeAreaInsets.right;
    }
    return right;
}
@end

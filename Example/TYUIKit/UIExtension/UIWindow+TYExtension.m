//
//  UIWindow+TYExtension.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "UIWindow+TYExtension.h"

@implementation UIWindow (TYExtension)

+ (UIWindow *)keyWindow {
//    UIWindow *window = [UIApplication sharedApplication].keyWindow;
//    if (!window) {
//        NSArray *windows = [UIApplication sharedApplication].windows;
//        if ([windows count] > 0) {
//            window = windows[0];
//        }
//    }
//    if (!window) {
//        window = [UIApplication sharedApplication].delegate.window;
//    }
    return [UIApplication sharedApplication].delegate.window;
}

+ (CGFloat)ty_keyWindowSafeAreaTop {
    CGFloat top = 0;
    if (@available(iOS 11.0, *)) {
        top = [self keyWindow].safeAreaInsets.top;
    }
    return top;
}

+ (CGFloat)ty_keyWindowSafeAreaLeft {
    CGFloat left = 0;
    if (@available(iOS 11.0, *)) {
        left = [self keyWindow].safeAreaInsets.left;
    }
    return left;
}

+ (CGFloat)ty_keyWindowSafeAreaBottom {
    CGFloat bottom = 0;
    if (@available(iOS 11.0, *)) {
        bottom = [self keyWindow].safeAreaInsets.bottom;
    }
    return bottom;
}

+ (CGFloat)ty_keyWindowSafeAreaRight {
    CGFloat right = 0;
    if (@available(iOS 11.0, *)) {
        right = [self keyWindow].safeAreaInsets.right;
    }
    return right;
}

+ (CGFloat)ty_statusBarHeight {
    return [UIApplication sharedApplication].statusBarFrame.size.height;
}

+ (CGFloat)ty_statusBarDifference {
    return [self ty_statusBarHeight] - 20;
}

@end

//
//  UIView+TYNibExtension.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "UIView+TYNibExtension.h"

@implementation UIView (TYNibExtension)

+ (__kindof UIView *)loadNibView {
    NSString *strName = NSStringFromClass(self);
    UIView *v = [[[NSBundle mainBundle] loadNibNamed:strName owner:nil options:nil] firstObject];
    return v;
}

@end

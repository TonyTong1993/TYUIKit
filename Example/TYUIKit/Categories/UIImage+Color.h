//
//  UIImage+Color.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/12/5.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, GradientType) {
    GradientTypeTopToBottom = 0,//从上到下
    GradientTypeLeftToRight = 1,//从左到右
    GradientTypeUpleftToLowright = 2,//左上到右下
    GradientTypeUprightToLowleft = 3,//右上到左下
};

@interface UIImage (Color)
    /**  设置图片的渐变色(颜色->图片)
 @param colors 渐变颜色数组  @param gradientType 渐变样式  @param imgSize 图片大小  @return 颜色->图片
     */
+ (UIImage *)gradientColorImageFromColors:(NSArray*)colors gradientType:(GradientType)gradientType imgSize:(CGSize)imgSize;
@end

NS_ASSUME_NONNULL_END

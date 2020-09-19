//
//  MCUNavigationBarScrollingAnimator.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "MCUScrollAnimator.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCUNavigationBarScrollingAnimator : MCUScrollAnimator

/// 指定要关联的 UINavigationBar，若不指定，会自动寻找当前 App 可视界面上的 navigationBar
@property(nullable, nonatomic, weak) UINavigationBar *navigationBar;

/**
 contentOffset.y 到达哪个值即开始动画，默认为 0
 
 @note 注意，如果 adjustsOffsetYWithInsetTopAutomatically 为 YES，则实际计算时的值为 (-contentInset.top + offsetYToStartAnimation)，这时候 offsetYToStartAnimation = 0 则表示在列表默认的停靠位置往下拉就会触发临界点。
 */
@property(nonatomic, assign) CGFloat offsetYToStartAnimation;

/// 控制从 offsetYToStartAnimation 开始，要滚动多长的距离就打到动画结束的位置，默认为 44
@property(nonatomic, assign) CGFloat distanceToStopAnimation;

/// 传给 offsetYToStartAnimation 的值是否要自动叠加上 -contentInset.top，默认为 YES。
@property(nonatomic, assign) BOOL adjustsOffsetYWithInsetTopAutomatically;

/// 当前滚动位置对应的进度
@property(nonatomic, assign, readonly) float progress;

/**
 如果为 NO，则当 progress 的值不再变化（例如达到 0 后继续往上滚动，或者达到 1 后继续往下滚动）时，就不会再触发动画，从而提升性能。
 
 如果为 YES，则任何时候只要有滚动产生，动画就会被触发，适合运用到类似 Plain Style 的 UITableView 里在滚动时也要适配停靠的 sectionHeader 的场景（因为需要不断计算当前正在停靠的 sectionHeader 是哪一个）。
 
 默认为 NO
 */
@property(nonatomic, assign) BOOL continuous;

/**
 用于控制不同滚动位置下的表现，总的动画 block，如果定义了这个，则滚动时不会再调用后面那几个 block
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 */
@property(nullable, nonatomic, copy) void (^animationBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);

/**
 返回不同滚动位置下对应的背景图
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 */
@property(nullable, nonatomic, copy) UIImage * (^backgroundImageBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);

/**
 返回不同滚动位置下对应的导航栏底部分隔线的图片
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 */
@property(nullable, nonatomic, copy) UIImage * (^shadowImageBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);

/**
 返回不同滚动位置下对应的导航栏的 tintColor
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 */
@property(nullable, nonatomic, copy) UIColor * (^tintColorBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);

/**
 返回不同滚动位置下对应的导航栏的 titleView tintColor
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 */
@property(nullable, nonatomic, copy) UIColor * (^titleViewTintColorBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);

/**
 返回不同滚动位置下对应的状态栏样式
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 @warning 需在项目的 Info.plist 文件内设置字段 “View controller-based status bar appearance” 的值为 NO 才能生效，如果不设置，或者值为 YES，则请自行通过系统提供的 - preferredStatusBarStyle 方法来实现，statusbarStyleBlock 无效
 */
@property(nullable, nonatomic, copy) UIStatusBarStyle (^statusbarStyleBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);

/**
 返回不同滚动位置下对应的导航栏的 barTintColor
 @param animator 当前的 animator 对象
 @param progress 当前滚动位置处于 offsetYToStartAnimation 到 (offsetYToStartAnimation + distanceToStopAnimation) 之间的哪个进度
 */
@property(nonatomic, copy) UIColor * (^barTintColorBlock)(MCUNavigationBarScrollingAnimator * _Nonnull animator, float progress);
@end

NS_ASSUME_NONNULL_END

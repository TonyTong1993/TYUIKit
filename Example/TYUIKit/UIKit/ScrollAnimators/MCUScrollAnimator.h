//
//  MCUScrollAnimator.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MCUScrollAnimator : NSObject<UIScrollViewDelegate>

/// 绑定的 UIScrollView
@property(nullable, nonatomic, weak) __kindof UIScrollView *scrollView;

/// UIScrollView 滚动时会调用这个 block
@property(nonatomic, copy) void (^didScrollBlock)(__kindof MCUScrollAnimator *animator);

/// 当 enabled 为 NO 时，即便 scrollView 滚动，didScrollBlock 也不会被调用。默认为 YES。
@property(nonatomic, assign) BOOL enabled;

/// 立即根据当前的滚动位置更新状态
- (void)updateScroll;
@end

NS_ASSUME_NONNULL_END

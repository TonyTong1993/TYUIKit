//
//  UIScrollView+TYRefresh.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/12/5.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYRefreshControl.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (TYRefresh)

- (void)addHeaderRefreshControl:(id<TYRefreshControl>)refreshControl;

- (void)beginHeaderRefreshing;

- (void)endHeaderRefreshing;

- (void)addFooterRefreshControl:(id<TYRefreshControl>)refreshControl;

- (void)beginFooterRefreshing;

- (void)endFooterRefreshing;
@end

NS_ASSUME_NONNULL_END

//
//  UIScrollView+TYRefresh.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/12/5.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "UIScrollView+TYRefresh.h"
#import <MJRefresh/MJRefresh.h>

@implementation UIScrollView (TYRefresh)
- (void)addHeaderRefreshControl:(id<TYRefreshControl>)refreshControl {
    if ([refreshControl isKindOfClass:[MJRefreshHeader class]]) {
        self.mj_header = (MJRefreshHeader *)refreshControl;
    }
}

- (void)beginHeaderRefreshing {
    if (self.mj_header) {
        [self.mj_header beginRefreshing];
    }
}

- (void)endHeaderRefreshing {
    if (self.mj_header) {
        [self.mj_header endRefreshing];
    }
}
@end

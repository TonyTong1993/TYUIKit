//
//  MCUScrollAnimator.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "MCUScrollAnimator.h"

@implementation MCUScrollAnimator
- (instancetype)init {
    if (self = [super init]) {
        self.enabled = YES;
    }
    return self;
}

- (void)setScrollView:(__kindof UIScrollView *)scrollView {
    if (scrollView) {
        scrollView.delegate = self;
    }
    _scrollView = scrollView;
}

- (void)updateScroll {
    [self scrollViewDidScroll:self.scrollView];
}

#pragma mark - <UIScrollViewDelegate>

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (self.enabled && scrollView == self.scrollView && self.didScrollBlock && !scrollView.hidden) {
        self.didScrollBlock(self);
    }
}

@end

//
//  TYRefreshHeader.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/12/5.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "TYRefreshHeader.h"
#import "UIImage+Color.h"
#import "UIColor+Extension.h"
@interface TYRefreshHeader()
@property (nonatomic,strong) UIImageView *backgroundImageView;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *slogonLabel;
@property (nonatomic,strong) UIProgressView *progressView;
@property (nonatomic, strong) UIImageView *carImgView;
@property (nonatomic,assign) CGFloat progress;
@end
@implementation TYRefreshHeader

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self didInitilized];
    }
    return self;
}

- (void)prepare {
    [super prepare];
    self.mj_h = [self pullLoadingHeight];
}

- (void)didInitilized {
    UIImage *image = [UIImage imageNamed:@"jiakao_kemu14_refresh_bg"];
    self.backgroundImageView = [[UIImageView alloc] initWithImage:image];
    self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.backgroundImageView];
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Medium" size:15];
    self.titleLabel.text = @"已实时同步至12月5最新官方题库";
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.titleLabel];
    self.slogonLabel = [[UILabel alloc] init];
    self.slogonLabel.font = [UIFont systemFontOfSize:11.5];
    self.slogonLabel.text = @"请尽快更新练习，早日拿本";
    self.slogonLabel.textColor = [UIColor grayColor];
    [self addSubview:self.slogonLabel];
    self.progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
    [self addSubview:self.progressView];
    UIImage *carImage = [UIImage imageNamed:@"jiakao_kemu14_refresh_car"];
    self.carImgView = [[UIImageView alloc] initWithImage:carImage];
    [self addSubview:self.carImgView];
    self.backgroundImageView.frame = CGRectMake(0, 30, 0, 70);
    self.titleLabel.frame = CGRectMake(15, 24, 0, 21);
    self.slogonLabel.frame = CGRectMake(self.titleLabel.mj_x,0,0, 16);
    CGRect frame = CGRectMake(15, 0, 0, 2);
    self.progressView.frame = frame;
    self.progressView.trackTintColor = [UIColor whiteColor];
    self.carImgView.frame = CGRectMake(15, 0, 90, 29);
    self.progress = 0.5;
}

- (void)placeSubviews {
    [super placeSubviews];
    self.backgroundImageView.mj_w = self.mj_w;
    self.titleLabel.mj_w = self.mj_w - 30;
    CGFloat titleLabelBottom = self.titleLabel.mj_y + self.titleLabel.mj_h;
    self.slogonLabel.mj_y = titleLabelBottom + 4;
    self.slogonLabel.mj_w = self.titleLabel.mj_w;
    self.progressView.mj_y = self.mj_h - 3;
    self.progressView.mj_w = self.mj_w - 30;
    self.carImgView.mj_y = self.progressView.mj_y - 29;
}


- (void)startAnimataion {
    self.progress = 0.5;
    [self startAnimataion:self.progress];
}

- (void)startAnimataion:(CGFloat)progress {
    if (progress > 1) {
        [self endRefreshing];
        return;
    }
    [UIView animateWithDuration:1.5 animations:^{
        [self.progressView setProgress:progress animated:YES];
        CGFloat originX = 15 + self.progressView.mj_w * self.progress - [self offset];
        if (progress >= 1) {
            originX += 40;
        }
        self.carImgView.mj_x = originX;
    } completion:^(BOOL finished) {
        if (self.progress >= 0.5 && self.progress < 0.65) {
            self.progress = 0.65;
        } else {
            self.progress += 0.35;
        }
        [self startAnimataion:self.progress];
    }];
}

- (void)resetToDefault {
    self.progress = [self offsetProgress];
    [self.progressView setProgress:self.progress];
    self.carImgView.mj_x = 15;
}

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    if (self.superview) {
        [self resetToDefault];
        UIColor *startColor = [UIColor colorWithRGBHex:0x26C3FD alpha:1];
        UIColor *endColor = [UIColor colorWithRGBHex:0x3F8EFF alpha:1];
        NSArray *colors = @[startColor,endColor];
        CGRect frame = CGRectMake(15, 0, self.mj_w - 30, 2);
        self.progressView.progressImage = [UIImage gradientColorImageFromColors:colors gradientType:GradientTypeUprightToLowleft imgSize:frame.size];
    }
}

- (void)setState:(MJRefreshState)state {
    MJRefreshCheckState
    // 根据状态做事情
    if (state == MJRefreshStateIdle) {
        if (oldState == MJRefreshStateRefreshing) {
            [self performSelector:@selector(resetToDefault) withObject:nil afterDelay:0.4];
        } else {
            [self resetToDefault];
        }
    } else if (state == MJRefreshStateRefreshing) {
        [self startAnimataion];
    }
}

- (CGFloat)offset {
    return 19;
}

- (CGFloat)offsetProgress {
    if (isnan(self.mj_w)) {
        return 0;
    }
    return [self offset] / self.mj_w;
}

- (CGFloat)pullLoadingHeight {
    return 115;
}

@end

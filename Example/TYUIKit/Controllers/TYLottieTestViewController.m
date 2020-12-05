//
//  TYLottieTestViewController.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/12/3.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "TYLottieTestViewController.h"
#import <Lottie/LOTAnimationView.h>
@interface TYLottieTestViewController ()
@property (nonatomic,strong) LOTAnimationView *animationView;
@end

@implementation TYLottieTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _animationView = [LOTAnimationView animationNamed:@"pull_up"];
    [self.view addSubview:_animationView];
    _animationView.center = self.view.center;
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self.animationView playWithCompletion:^(BOOL animationFinished) {
//            [self.animationView setAnimationNamed:@"pull_down"];
//            [self.animationView playWithCompletion:^(BOOL animationFinished) {
//                [self.animationView setAnimationNamed:@"pull_all"];
//                [self.animationView play];
//            }];
//        }];
//    });
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  TYDemoViewController.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/7/11.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "TYDemoViewController.h"

@interface TYDemoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TYDemoViewController

- (instancetype)init {
#if HOME
    self = [super init];
#else
    NSString *path = [[NSBundle mainBundle] pathForResource:@"TYUIKit" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    self = [super initWithNibName:NSStringFromClass([TYDemoViewController class]) bundle:bundle];
#endif
    NSAssert(self, @"初始化失败！");
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
        // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    NSBundle *bundle = nil;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"TYUIKit" ofType:@"bundle"];
    bundle = [NSBundle bundleWithPath:path];
    UIImage *image = [UIImage imageNamed:@"qctt_loading_0" inBundle:bundle compatibleWithTraitCollection:nil];
    [self.imageView setImage:image];
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

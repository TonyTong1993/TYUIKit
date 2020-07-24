//
//  TYViewController.m
//  TYUIKit
//
//  Created by TonyTong1993 on 07/09/2020.
//  Copyright (c) 2020 TonyTong1993. All rights reserved.
//

#import "TYViewController.h"
#import "TYDefaultTableViewCell.h"
#import "TYDemoViewController.h"
@interface TYViewController () <UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation TYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    NSBundle *bundle = nil;
#if HOME
    NSLog(@"主工程环境");
#else
    NSString *path = [[NSBundle mainBundle] pathForResource:@"TYUIKit" ofType:@"bundle"];
    bundle = [NSBundle bundleWithPath:path];
#endif
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([TYDefaultTableViewCell class]) bundle:bundle];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"TYDefaultTableViewCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYDefaultTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TYDefaultTableViewCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"------%zu",indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TYDemoViewController *vc = [TYDemoViewController new];
    if (self.navigationController) {
        [self.navigationController pushViewController:vc animated:YES];
    }else {
        [self presentViewController:vc animated:YES completion:nil];
    }
}

@end

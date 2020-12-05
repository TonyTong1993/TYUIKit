//
//  TYTestViewController.m
//  TYUIKit
//
//  Created by 童万华 on 2020/7/10.
//

#import "TYTestViewController.h"
#import "TYTestTableViewCell.h"
#import "TYRefreshHeader.h"
#import "UIColor+Extension.h"
#import "UIScrollView+TYRefresh.h"
@interface TYTestViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic,assign) CGFloat progress;
@property (nonatomic,strong) TYRefreshHeader *refreshHeader;
@end

@implementation TYTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"TYUIKit" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    UIImage *image = [UIImage imageNamed:@"qctt_ic_news_express_playing" inBundle:bundle compatibleWithTraitCollection:nil];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([TYTestTableViewCell class]) bundle:bundle];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"TYTestTableViewCell"];
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 80;
    self.progress = 0.0f;
    TYRefreshHeader *refreshContorl = [TYRefreshHeader headerWithRefreshingBlock:^{
        
    }];
    [self.tableView addHeaderRefreshControl:refreshContorl];
    self.refreshHeader = refreshContorl;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYTestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TYTestTableViewCell"];
    cell.textLabel.text = @"hello world!";
    return cell;
}



@end

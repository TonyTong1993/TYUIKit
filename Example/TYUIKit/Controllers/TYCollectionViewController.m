//
//  TYCollectionViewController.m
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/10/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import "TYCollectionViewController.h"

@interface TYCollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TYCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}



@end

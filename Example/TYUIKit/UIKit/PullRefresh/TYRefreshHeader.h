//
//  TYRefreshHeader.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/12/5.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import <MJRefresh/MJRefreshHeader.h>
#import "TYRefreshControl.h"
NS_ASSUME_NONNULL_BEGIN

@interface TYRefreshHeader : MJRefreshHeader<TYRefreshControl>
- (void)startAnimataion;
@end

NS_ASSUME_NONNULL_END

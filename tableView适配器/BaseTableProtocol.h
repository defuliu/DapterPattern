//
//  BaseTableProtocol.h
//  tableView适配器
//
//  Created by 刘德福 on 2018/4/12.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseTableProtocol <UITableViewDataSource,UITableViewDelegate>

// 父类提供给外界数据访问的接口
- (void)dataRefresh:(NSMutableArray *)mutableArray;

// 子类获取数据的接口
- (id)getObject:(NSIndexPath *)indexPath;

@end

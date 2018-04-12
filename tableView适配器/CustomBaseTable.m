//
//  CustomBaseTable.m
//  tableView适配器
//
//  Created by 刘德福 on 2018/4/12.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "CustomBaseTable.h"
#import "PDViewCell.h"

@interface CustomBaseTable ()
@property (nonatomic, strong) NSMutableArray *datas;
@end


@implementation CustomBaseTable


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}


#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellName = @"cellName";
    
    PDViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    
    if (cell == nil) {
        cell = [[PDViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }


    return cell;
}

- (id)getObject:(NSIndexPath *)indexPath {
    return self.datas[indexPath.row];
}

- (void)dataRefresh:(NSMutableArray *)mutableArray {
    // 添加  删除
    if (self.datas == nil) {
        self.datas = mutableArray;
        
    }else {
        [self.datas removeAllObjects];
        [self.datas addObjectsFromArray:mutableArray];
    }
}

@end



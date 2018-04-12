//
//  SubTable.m
//  tableView适配器
//
//  Created by 刘德福 on 2018/4/12.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "SubTable.h"
#import "PDViewCell.h"

@implementation SubTable


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    PDViewCell *cell = (PDViewCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];

    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
   
    [cell setModel:[self getObject:indexPath]];
    return cell;
}

@end

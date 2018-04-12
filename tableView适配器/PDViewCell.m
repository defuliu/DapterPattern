//
//  PDViewCell.m
//  TableViewDemo
//
//  Created by 刘德福 on 2018/4/12.
//  Copyright © 2018年 TZ. All rights reserved.
//

#import "PDViewCell.h"

@interface PDViewCell ()

@property (nonatomic, strong)UILabel *userLabel;
@property (nonatomic, strong)UILabel *pswLabel;
@property (nonatomic, strong)UIImageView *image;

@end

@implementation PDViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        [self createSubviews];
    }
    return self;
    
}

- (void)createSubviews
{
    // 用户名
    self.userLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 80, 25)];
    [self.contentView addSubview:self.userLabel];
    
    // 密码
    self.pswLabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 0, 150, 25)];
    [self.contentView addSubview:self.pswLabel];
    
}

- (void)setModel:(CarModel *)model
{
    self.userLabel.text = model.book;
    self.pswLabel.text = model.name;
    
}

@end

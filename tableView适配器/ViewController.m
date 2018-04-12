//
//  ViewController.m
//  tableView适配器
//
//  Created by 刘德福 on 2018/4/12.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "ViewController.h"
#import "CarModel.h"
#import "SubTable.h"
#import "BaseTableProtocol.h"


@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ViewController



- (NSMutableArray *)testArray
{
    self.array = [NSMutableArray array];
    
    for (NSInteger i = 0; i < 100; i ++) {
        CarModel *car = [[CarModel alloc] init];
        if (i%2==0) {
            car.name = @"测试1";
            car.book = @"ViewOne";
        }
        else {
            car.name = @"测试2";
            car.book = @"ViewTwo";
        }
        [self.array addObject: car];
    }
    
    return self.array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id <BaseTableProtocol> baseTable = [[SubTable alloc] initWithFrame:self.view.bounds];
    [baseTable dataRefresh:[self testArray]];
    [self.view addSubview:(id)baseTable];
 
}

@end





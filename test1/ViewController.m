//
//  ViewController.m
//  test1
//
//  Created by zhangyuan on 16/3/11.
//  Copyright © 2016年 zhangyuan. All rights reserved.
//

#import "ViewController.h"
#import "LSInteger.h"
#import "TestTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic) UITableView *tableView;

@property(strong,nonatomic) NSMutableArray *arr;

@end

@implementation ViewController

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *tag = @"testCell";
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tag];
    if (cell) {
        cell = [[TestTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tag];
    }
    [cell updateWithEntryObject:[_arr objectAtIndex:indexPath.row]];
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _arr.count;
}

-(CGFloat) heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self preData];
    [self setupTableView];
}

-(void) preData{
    _arr = [NSMutableArray array];
    for (int i = 0; i < 111; i++) {
        LSInteger *integer = [LSInteger alloc];
        integer.position = i;
        [_arr addObject:integer];
    }
}

-(void) setupTableView{
    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:_tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

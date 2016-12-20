//
//  MAJuejinViewController.m
//  iOSPosts
//
//  Created by mao on 2016/12/13.
//  Copyright © 2016年 mao. All rights reserved.
//

#import "MAJuejinViewController.h"

@interface MAJuejinViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UILabel *emptyLabel;

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation MAJuejinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.tabBarController.title = @"掘金";
    
    [self.view addSubview:self.emptyLabel];
    NSLog(@"juejin page loaded");
    
    //start load data
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"掘金";
}

- (UILabel *)emptyLabel
{
    if (!_emptyLabel) {
        _emptyLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, 100, 50)];
        _emptyLabel.opaque = NO;
        _emptyLabel.text = @"空空如也";
    }
    
    return _emptyLabel;
}

-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREENH_HEIGHT) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 45;
    }
    return _tableView;
}

#pragma mark tableview delegate & dataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource.count;
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  MATabbarControllerViewController.m
//  iOSPosts
//
//  Created by mao on 2016/12/13.
//  Copyright © 2016年 mao. All rights reserved.
//

#import "MATabbarController.h"
#import "MAJuejinViewController.h"

@interface MATabbarController ()

@property (nonatomic, strong) MAJuejinViewController *juejinVC;
//@property (nonatomic, strong) NSMutableArray *tabbarTitles;
//@property (nonatomic, strong) NSMutableArray *tabbarIcons;

@end

@implementation MATabbarController

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIImage *juejinImage = [[UIImage imageNamed:@"tabbar_icons_juejin"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UITabBarItem* item = [[UITabBarItem alloc]initWithTitle:@"掘金" image:juejinImage selectedImage:juejinImage];
        self.juejinVC.tabBarItem = item;

        self.viewControllers = @[self.juejinVC];
    }
    return self;
}

-(MAJuejinViewController *)juejinVC
{
    if (!_juejinVC) {
        _juejinVC = [[MAJuejinViewController alloc]init];
    }
    return _juejinVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

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

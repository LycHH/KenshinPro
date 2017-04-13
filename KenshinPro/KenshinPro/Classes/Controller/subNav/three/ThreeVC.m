//
//  ThreeVC.m
//  KenshinPro
//
//  Created by kenshin on 17/3/16.
//  Copyright © 2017年 Kenshin. All rights reserved.
//

#import "ThreeVC.h"
#import "OCAndVC.h"
#import "OCCallThirdSwiftLibVC.h"

@interface ThreeVC ()

@end

@implementation ThreeVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadData];
    [self initLockMasterAppVCUI];
    
}

- (void)loadData
{
    [self addDataWithTitle:@"OC+Swift 混编" andDetail:@"OC下调用Swift，Swift下调用OC"];
    [self addDataWithTitle:@"OC调用Swift三方库" andDetail:@"这个就爽了"];
    
    
}

- (void)initLockMasterAppVCUI
{
    self.navigationItem.title = @"Demo";
    [self.view addSubview:self.tableView];
    
}

- (void)clickCellWithTitle:(NSString *)title
{
    
    if ([title isEqualToString:@"OC+Swift 混编"])
    {
        OCAndVC *vc = [[OCAndVC alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    if ([title isEqualToString:@"OC调用Swift三方库"])
    {
        OCCallThirdSwiftLibVC *vc = [[OCCallThirdSwiftLibVC alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    
}

- (void)dealloc
{
    [Tools NSLogClassDestroy:self];
    
}

@end

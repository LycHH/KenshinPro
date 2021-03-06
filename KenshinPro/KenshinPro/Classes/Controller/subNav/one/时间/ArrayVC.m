//
//  ArrayVC.m
//  KenshinPro
//
//  Created by kenshin on 17/4/28.
//  Copyright © 2017年 Kenshin. All rights reserved.
//

#import "ArrayVC.h"

@interface ArrayVC ()

@end

@implementation ArrayVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"数组";
    
}

#pragma mark 数组排序 系统方法
- (IBAction)clickButtonSortArrInSystemAPI:(id)sender
{
    NSArray *arr = @[@"9",
                     @"阿呆",
                     @"Lems",
                     @"孙悟空",
                     @"Kenshin",
                     @"6",
                     @"孙悟天",
                     @"Alerbot",
                     @"阿瓜",
                     @"1",
                     @"孙悟饭"];
    
    
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(NSString *m1, NSString *m2){
        return [m1 compare:m2];
    }];
    
    NSLog(@"直接输出数组 无法输出中文内容 %@", arr); //如果直接输出的话，是不支持中文的 好像IOS10以前的系统可以直接输出中文
    //这里只要吧内容转成字符串再输出 就支持中文了
    for (NSString *str in arr)
    {
        NSLog(@"%@", str);
    }
    [self toast:[NSString stringWithFormat:@"%@", arr]];
    
    //试一试输出字典呢
    NSMutableDictionary *mDic = [[NSMutableDictionary alloc] init];
    [mDic setObject:@"大娃"   forKey:@"1"];
    [mDic setObject:@"二狗"   forKey:@"2"];
    [mDic setObject:@"张三"   forKey:@"3"];
    [mDic setObject:@"李四"   forKey:@"4"];
    [mDic setObject:@"王五"   forKey:@"5"];
    [mDic setObject:@"赵六"   forKey:@"6"];
    [mDic setObject:@"鬼脚七"  forKey:@"7"];
    NSLog(@"直接输出字典 无法输出中文内容 %@, ", mDic);
    
    for (int i = 1; i < 8; i++)
    {
        NSString *key = [NSString stringWithFormat:@"%d", i];
        NSString *str = [mDic objectForKey:key];
        NSLog(@"%@", str);
    }
    
    //下面通过宏定义一个输出方法，能够直接输出 数组 或者 字典 中的中文内容
}


- (void)dealloc
{
    [Tools NSLogClassDestroy:self];
    
}

@end

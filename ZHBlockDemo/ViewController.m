//
//  ViewController.m
//  ZHBlockDemo
//
//  Created by zhanghua0221 on 17/3/24.
//  Copyright © 2017年 zhanghua0221. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(40, 200, 300, 50);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"点击进入下一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushNextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)pushNextPage{
    
    
    FirstViewController *first = [[FirstViewController alloc] init];
    
//Block普通传值
    first.block = ^(UIColor *clr){
        
        self.view.backgroundColor = clr;
    };
//做为参数传值
    
    [first returnColor:^(UIColor *clr) {

        self.view.backgroundColor = clr;
    }];
    
    [self.navigationController pushViewController:first animated:YES];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

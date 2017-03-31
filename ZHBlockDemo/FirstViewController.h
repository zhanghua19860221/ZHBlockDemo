//
//  FirstViewController.h
//  ZHBlockDemo
//
//  Created by zhanghua0221 on 17/3/24.
//  Copyright © 2017年 zhanghua0221. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^myBlock)(UIColor *);

@interface FirstViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong ,nonatomic) NSArray *tableArray;//用来每个cell的文本数组
@property (strong ,nonatomic) UITableView *tableView;
@property (strong ,nonatomic) myBlock block;
@property (strong ,nonatomic) myBlock blockParame;


- (void)returnColor:(myBlock)blockParameter;

@end

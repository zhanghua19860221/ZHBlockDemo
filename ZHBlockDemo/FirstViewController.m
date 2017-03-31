//
//  FirstViewController.m
//  ZHBlockDemo
//
//  Created by zhanghua0221 on 17/3/24.
//  Copyright © 2017年 zhanghua0221. All rights reserved.


#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableArray = [NSArray arrayWithObjects:@"block传值",@"block传参", nil];
    [self creataTableView];
    // Do any additional setup after loading the view.
}
-(void)creataTableView{
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SC_WIDTH, SC_HEIGHT) style:UITableViewStylePlain];
    
    self.tableView.delegate = self ;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
}

#pragma ******** UITableViewDelegate ********

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.tableArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
    }
    cell.textLabel.text = self.tableArray [indexPath.row];

    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.row) {
        case 0:
            
            self.block([UIColor cyanColor]);
            
            break;
        case 1:
            
            self.blockParame([UIColor redColor]);
            
            break;
        default:
            break;
    }
}
- (void)returnColor:(myBlock)blockParameter{
    
    self.blockParame = blockParameter;
    
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

//
//  ViewController.m
//  PYfanhuiButton
//
//  Created by Apple on 16/8/27.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+WHReturntop.h"
@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic , strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    

}

#pragma mark = tab
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"WHReturnTop %ld",indexPath.row];
    
    return cell;
}

#pragma mark = sc
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%f", scrollView.contentOffset.y);
    if (scrollView.contentOffset.y > 800) {
        self.Top.hidden = NO;
        //* 实例 */
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fx_cart_top"]];
        [self AddWHReturnTop:CGRectMake(250, 500, 50, 50) BackImage:imageView CallBackblock:^{
            NSLog(@"点击了按钮");
            //点击返回顶部
            NSIndexPath *indexpath = [NSIndexPath indexPathForRow:0 inSection:0];
            [self.tableView scrollToRowAtIndexPath:indexpath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        }];
        
    } else {
        self.Top.hidden = YES;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

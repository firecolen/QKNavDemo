//
//  QKTableViewController.m
//  QKNavDemo
//
//  Created by Apple on 21/3/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "QKTableViewController.h"
#define kOriHeight 200
@interface QKTableViewController () <UITableViewDataSource, UITableViewDelegate>
//@property (weak, nonatomic) IBOutlet UIView *headView;
//@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation QKTableViewController

static NSString *QKIdentifier = @"QKIdentifier";
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navView.hidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];

    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
    self.navView.lblTitle.text = @"导航l l";
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:QKIdentifier];
    self.tableView.contentInset = UIEdgeInsetsMake(kOriHeight, 0, 0, 0);
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:QKIdentifier];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
}


#pragma mark - scrollview
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offset = scrollView.contentOffset.y + kOriHeight;
    CGFloat imgH = kOriHeight - offset;
    self.imageHeight.constant = imgH;
    CGFloat alpha = offset * 1 / 136.0;   // (200 - 64) / 136.0f
    if (alpha >= 1) {
        alpha = 0.99;
    }
    self.navView.ctxView.backgroundColor = [UIColor colorWithRed:42/255.0 green:111/255.0 blue:208/255.0 alpha:alpha];
    self.navView.backgroundColor = [UIColor colorWithWhite:1 alpha:alpha];
    
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

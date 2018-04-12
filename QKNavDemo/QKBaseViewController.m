//
//  QKBaseViewController.m
//  QKNavDemo
//
//  Created by Apple on 22/3/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "QKBaseViewController.h"

@interface QKBaseViewController ()

@end

@implementation QKBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navView = [[QKNavView alloc]init];
    [self.view addSubview:self.navView];
    [self.navView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.height.mas_equalTo(kNavHeight);
    }];
//    NSLog(@"==%f",self.view.frame.s)
    [self.navView.backBtn addTarget:self action:@selector(backToVc) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)backToVc{
    [self.navigationController popViewControllerAnimated:YES];
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

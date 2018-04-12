//
//  QKRootViewController.m
//  QKNavDemo
//
//  Created by Apple on 21/3/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "QKRootViewController.h"
#import "Masonry.h"
#import "QKTableViewController.h"
@interface QKRootViewController ()

//ctxView是否隐藏
@property(nonatomic,assign)BOOL isHideView;

@end

@implementation QKRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = YES;
    self.navView.backBtn.hidden = YES;
    
    self.navView.lblTitle.text = @"首页";
    [self.titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(kNavHeight);
    }];
}
-(IBAction)moveAnimation:(id)sender{
    
    _isHideView = !_isHideView;
    [UIView setAnimationDuration:2];
    
    [self.ctxView mas_updateConstraints:^(MASConstraintMaker *make) {
        if (_isHideView) {
            make.top.equalTo(self.titleView.mas_bottom).offset(-58);
        }else{
            make.top.equalTo(self.titleView.mas_bottom).offset(0);
        }
    }];
    [self.view layoutIfNeeded];
    [UIView commitAnimations];

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

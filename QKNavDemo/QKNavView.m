//
//  QKNavView.m
//  QKNavDemo
//
//  Created by Apple on 22/3/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "QKNavView.h"

@implementation QKNavView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.ctxView];
        [_ctxView addSubview:self.backBtn];
        [_ctxView addSubview:self.lblTitle];
        self.backgroundColor = [UIColor whiteColor];
        _lblTitle.text = @"111";
        
        [self.backBtn setImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
        [self.ctxView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).with.offset(0);
            make.right.equalTo(self).with.offset(0);
            make.bottom.equalTo(self).with.offset(0);
            make.height.mas_equalTo( 44);
        }];
        [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.ctxView.mas_left).with.offset(10);
            make.bottom.equalTo(self.ctxView.mas_bottom).with.offset(0);
            make.size.mas_equalTo(CGSizeMake(44, 44));
        }];
        [self.lblTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.ctxView.mas_left).with.offset(60);
            make.right.equalTo(self.ctxView).with.offset(-60);
            make.bottom.equalTo(self.ctxView.mas_bottom).with.offset(0);
            make.height.mas_equalTo(44);
        }];
        
    }
    return self;
}
-(UIView *)ctxView{
    if (!_ctxView) {
        _ctxView = [[UIView alloc]init];
        _ctxView.backgroundColor = [UIColor colorWithRed:42/255.0 green:111/255.0 blue:208/255.0 alpha:1];
    }
    return _ctxView;
}
-(UIButton *)backBtn{
    if (!_backBtn) {
        _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return _backBtn;
}
-(UILabel *)lblTitle{
    if (!_lblTitle) {
        _lblTitle = [[UILabel alloc]init];
        _lblTitle.textColor = [UIColor whiteColor];
        _lblTitle.textAlignment = NSTextAlignmentCenter;
    }
    return _lblTitle;
}
@end

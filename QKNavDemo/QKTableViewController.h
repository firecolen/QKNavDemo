//
//  QKTableViewController.h
//  QKNavDemo
//
//  Created by Apple on 21/3/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QKTableViewController : QKBaseViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeight;
@end

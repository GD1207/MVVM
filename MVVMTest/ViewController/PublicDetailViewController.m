//
//  PublicDetailViewController.m
//  MVVMTest
//
//  Created by 李泽鲁 on 15/1/8.
//  Copyright (c) 2015年 李泽鲁. All rights reserved.
//

#import "PublicDetailViewController.h"

@interface PublicDetailViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *headImageView;
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UITextView *textLable;
@end

@implementation PublicDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setContent];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 设置页面元素上的值
 */
- (void)setContent {
    _userNameLabel.text = _publicModel.userName;
    _timeLabel.text = _publicModel.date;
    _textLable.text = _publicModel.text;
    [_headImageView sd_setImageWithURL:_publicModel.imageUrl];
}

@end

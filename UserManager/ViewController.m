//
//  ViewController.m
//  UserManager
//
//  Created by 技术部 on 17/2/20.
//  Copyright © 2017年 Mr Luo. All rights reserved.
//

#import "ViewController.h"
#import "UserManager.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UserModel *user = [[UserModel alloc] init];
    user.name = @"Mr Luo";
    user.userId = @(0707);
    [UserManager saveUerInfoWithModel:user];
    
    
    [self getUser];
}

- (void) getUser {
    UserModel *user = [UserManager readUserInfo];
    NSLog(@"user_name:%@;user_id:%@",user.name,[user.userId stringValue]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

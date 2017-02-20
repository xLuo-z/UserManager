//
//  UserManager.m
//  UserManager
//
//  Created by 技术部 on 17/2/20.
//  Copyright © 2017年 Mr Luo. All rights reserved.
//

#import "UserManager.h"
#import "ArchiveTool.h"

#define KUserArchivePathKey @"userInfo.archive"

#define KEY @"userInfo"

@implementation UserManager

#pragma mark 保存用户信息
+ (void)saveUerInfoWithModel:(UserModel *)model {
    BOOL success = [ArchiveTool archiveModel:model toPath:[ArchiveTool pathWithKey:KUserArchivePathKey] withKey:KEY];
    if (!success) {
        NSLog(@"存储用户信息失败");
    }
}

#pragma mark 取出用户信息
+ (UserModel *)readUserInfo {
    UserModel *model = [ArchiveTool unarchiveFromPath:[ArchiveTool pathWithKey:KUserArchivePathKey] withKey:KEY];
    if (!model) {
        model = [[UserModel alloc] init];
    }
    return model;
}

+ (void) clearUserInfo {
    UserModel *model = [[UserModel alloc] init];
    [self saveUerInfoWithModel:model];
}

@end

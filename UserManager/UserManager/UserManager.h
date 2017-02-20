//
//  UserManager.h
//  UserManager
//
//  Created by 技术部 on 17/2/20.
//  Copyright © 2017年 Mr Luo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

@interface UserManager : NSObject

/*!
 @breif 保存用户信息
 */
+ (void)saveUerInfoWithModel:(UserModel *)model;

/*!
 @breif 根据当前用户属性的值取到缓存的用户属性
 */
+ (UserModel *)readUserInfo;

/*!
 @breif 清除用户信息
 */
+ (void) clearUserInfo;

@end

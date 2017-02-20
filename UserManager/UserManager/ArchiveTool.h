//
//  ArchiveTool.h
//  UserManager
//
//  Created by 技术部 on 17/2/20.
//  Copyright © 2017年 Mr Luo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArchiveTool : NSObject

//归档
+ (BOOL)archiveModel:(id)aModel toPath:(NSString *)path withKey:(NSString *)archivingDataKey;
//从指定位置解档
+ (id)unarchiveFromPath:(NSString *)path withKey:(NSString *)archivingDataKey;

//根据key获得存储地址
+ (NSString *)pathWithKey:(NSString *)pathKey;


@end

//
//  ArchiveTool.m
//  UserManager
//
//  Created by 技术部 on 17/2/20.
//  Copyright © 2017年 Mr Luo. All rights reserved.
//

#import "ArchiveTool.h"

@implementation ArchiveTool

+ (BOOL)archiveModel:(id)aModel toPath:(NSString *)path withKey:(NSString *)archivingDataKey{
    //归档
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    // archivingDate的encodeWithCoder方法被调用
    [archiver encodeObject:aModel forKey:archivingDataKey];
    [archiver finishEncoding];
    //写入文件
    return [data writeToFile:path atomically:YES];
}

+ (id)unarchiveFromPath:(NSString *)path withKey:(NSString *)archivingDataKey{
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    //获得类
    //initWithCoder方法被调用
    id archivingData = [unarchiver decodeObjectForKey:archivingDataKey];
    [unarchiver finishDecoding];
    return archivingData;
}

+ (NSString *)pathWithKey:(NSString *)pathKey{
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:pathKey];
    //NSLog(@"%@",filePath);
    return filePath;
}

@end

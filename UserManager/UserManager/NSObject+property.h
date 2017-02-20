//
//  NSObject+property.h
//  UserManager
//
//  Created by 技术部 on 17/2/20.
//  Copyright © 2017年 Mr Luo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (property)

/*!
 @brief 根据当前类获取当前类的所有属性名称
 @param cls 当前类 Class类型
 @return 当前类的所有属性名称
 */
- (NSArray *)getProperties:(Class)cls;

/*!
 @brief 循环属性所对应的名称
 @param properties 循环后执行的block key为当前属性的名称
 */
- (void) enumerateProperties:(void(^)(id key))properties;

@end

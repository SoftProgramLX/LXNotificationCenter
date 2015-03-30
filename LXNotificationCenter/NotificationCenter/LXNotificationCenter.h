//
//  LXNotificationCenter.h
//  封装通知
//
//  Created by qianfeng on 14-9-26.
//  Copyright (c) 2014年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LXNSNotification.h"

@interface LXNotificationCenter : NSObject

@property (nonatomic, strong)NSMutableArray *objectsArr;

+ (LXNotificationCenter *)defaultCenter;

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;

- (id)postNotificationName:(NSString *)aName object:(id)anObject;

- (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;

@end

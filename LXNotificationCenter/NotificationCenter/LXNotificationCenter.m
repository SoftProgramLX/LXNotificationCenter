//
//  LXNotificationCenter.m
//  封装通知
//
//  Created by qianfeng on 14-9-26.
//  Copyright (c) 2014年 lixu. All rights reserved.
//

#import "LXNotificationCenter.h"
#import "LXNSNotification.h"

@implementation LXNotificationCenter

static LXNotificationCenter *notificationCenter = nil;


+ (LXNotificationCenter *)defaultCenter
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        notificationCenter = [[LXNotificationCenter allocWithZone:NULL] init];
    });
    return notificationCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.objectsArr = [NSMutableArray array];
    }
    return self;
}

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject
{
    LXNSNotification *notification = [[LXNSNotification alloc] initWithObserver:observer selector:aSelector name:aName object:anObject];
    [self.objectsArr addObject:notification];
}

- (id)postNotificationName:(NSString *)aName object:(id)anObject
{
    for (LXNSNotification * noti in self.objectsArr) {
        if ([noti.aName isEqualToString:aName]) {
            NSString *object = noti.object;
            noti.object = anObject;
            [noti.observer performSelector:noti.aSelector withObject:noti];
            
            return object;
        }
    }
    return nil;
}

- (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject
{
    for (LXNSNotification * noti in self.objectsArr) {
        if ([noti.aName isEqualToString:aName]) {
            [self.objectsArr removeObject:noti];
        }
    }
}

@end

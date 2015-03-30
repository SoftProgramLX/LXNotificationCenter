//
//  LXNSNotification.m
//  封装通知
//
//  Created by qianfeng on 14-9-26.
//  Copyright (c) 2014年 lixu. All rights reserved.
//

#import "LXNSNotification.h"

@implementation LXNSNotification

- (LXNSNotification *)initWithObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)object
{
    if (self = [super init]) {
        self.observer = observer;
        self.aSelector = aSelector;
        self.aName = aName;
        self.object = object;
    }
    return self;
}

@end

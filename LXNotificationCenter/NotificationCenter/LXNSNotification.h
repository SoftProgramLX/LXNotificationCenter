//
//  LXNSNotification.h
//  封装通知
//
//  Created by apple on 14-9-26.
//  Copyright (c) 2014年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LXNSNotification : NSObject

@property (nonatomic, strong)id observer;
@property (nonatomic, assign)SEL aSelector;
@property (nonatomic, strong)NSString *aName;
@property (nonatomic, strong)id object;

- (LXNSNotification *)initWithObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)object;

@end

//
//  LXHellpCreateView.h
//  LXNotificationCenter
//
//  Created by apple on 15/3/30.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LXHellpCreateView : NSObject

+ (UITextField *)createTextField:(NSString *)text withFrame:(CGRect)rect withBackgroundColor:(UIColor *)color withFont:(CGFloat)fontSize;

@end

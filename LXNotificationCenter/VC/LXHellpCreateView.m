//
//  LXHellpCreateView.m
//  LXNotificationCenter
//
//  Created by apple on 15/3/30.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import "LXHellpCreateView.h"

@implementation LXHellpCreateView

+ (UITextField *)createTextField:(NSString *)text withFrame:(CGRect)rect withBackgroundColor:(UIColor *)color withFont:(CGFloat)fontSize
{
    UITextField *textField = [[UITextField alloc] initWithFrame:rect];
    textField.backgroundColor = color;
//    [textField becomeFirstResponder];
    textField.text = text;
    textField.font = [UIFont systemFontOfSize:fontSize];
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.layer.cornerRadius = 4;
    textField.layer.masksToBounds = YES;
    textField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 0)];
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    return textField;
}

@end



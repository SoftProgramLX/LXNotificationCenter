//
//  ViewController.m
//  LXNotificationCenter
//
//  Created by apple on 15/3/27.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import "ViewController.h"
#import "LXNotificationCenter.h"
#import "LXTwoViewController.h"
#import "LXHellpCreateView.h"

@interface ViewController ()

@property (nonatomic, strong)UITextField *showTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _showTextField = [LXHellpCreateView createTextField:@"Positive 1001" withFrame:CGRectMake(50, 100, [UIScreen mainScreen].applicationFrame.size.width - 100, 40) withBackgroundColor:[UIColor cyanColor] withFont:16];
    [self.view addSubview:_showTextField];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].applicationFrame.size.width/2.0 - 30, 150, 60, 30)];
    [btn addTarget:self action:@selector(nextVC:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"next" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
}

- (void)NotificationReturnValue:(LXNSNotification *)noti
{
    self.showTextField.text = noti.object;
    NSLog(@"%@", noti.object);
}

- (void)nextVC:(id)sender
{
    [self.navigationController pushViewController:[[LXTwoViewController alloc] init] animated:YES];
    [[LXNotificationCenter defaultCenter] addObserver:self selector:@selector(NotificationReturnValue:) name:@"Bidirectional transmission value" object:self.showTextField.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end



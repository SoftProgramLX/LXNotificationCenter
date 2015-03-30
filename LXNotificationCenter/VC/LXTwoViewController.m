//
//  LXTwoViewController.m
//  LXNotificationCenter
//
//  Created by apple on 15/3/30.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import "LXTwoViewController.h"
#import "LXNotificationCenter.h"
#import "LXHellpCreateView.h"

@interface LXTwoViewController () <UIAlertViewDelegate>

@property (nonatomic, strong)UITextField *showTextField;

@end

@implementation LXTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(back:)];
    
    _showTextField = [LXHellpCreateView createTextField:@"Reverse －1002" withFrame:CGRectMake(50, 160, [UIScreen mainScreen].applicationFrame.size.width - 100, 40) withBackgroundColor:[UIColor cyanColor] withFont:16];
    [self.view addSubview:_showTextField];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)back:(id)sender
{
    NSString *object = [[LXNotificationCenter defaultCenter] postNotificationName:@"Bidirectional transmission value" object:self.showTextField.text];
    NSLog(@"==%@", object);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"这是主控制器正向传的值" message:object delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end



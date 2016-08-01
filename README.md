# LXNotificationCenter
Own package of a notice to achieve two-way value, can be multi to multi value, changing the system only provides a one-way to multi value transmission mechanism

自己写了一个通知实现双向传值，而系统的NSNotificationCenter只实现了单项传值。
关键代码如下：
```objective-c
    NSString *object = [[LXNotificationCenter defaultCenter] postNotificationName:@"Bidirectional transmission value" object:self.showTextField.text];
    NSLog(@"==%@", object);
```
在发送通知信息self.showTextField.text的同时接受注册用户初始化时传入的数据object，这里将它打印在了控制台。

//
//  ViewController.m
//  Notification
//
//  Created by Celestial on 16/11/23.
//

#import "ViewController.h"
#import "Notifications.h"
#import "NotificationPayLoads.h"
@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
}
- (IBAction)getNotify:(id)sender 
{
    NSDictionary *userInfo = @{@"Channel": @"Code pro"};
    [[NSNotificationCenter defaultCenter] postNotificationName:Notifications.ViewControllerPublishNotification object:nil/*[[NotificationPayLoads alloc]initWithPayload:@"Channel Code Pro"]*/ userInfo:userInfo];
}              /// Objects take Object of the class                                                                              //\\{userInfo Take Dictonary}//
@end

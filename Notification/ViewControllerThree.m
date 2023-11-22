#import "ViewControllerThree.h"
#import "Notifications.h"
#import "NotificationPayLoads.h"
@interface ViewControllerThree ()

@end

@implementation ViewControllerThree

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(notificationReceived:)
                                                     name:Notifications.ViewControllerPublishNotification
                                                   object:nil];
}

- (void)notificationReceived:(NSNotification *)notification
{
    NSLog(@"The notification has been received in view controller three");
//    NSLog(@"%@", notification.userInfo);
    
//    if ([notification.object isKindOfClass:[NotificationPayLoads class]])
//    {
//        NotificationPayLoads *payload = (NotificationPayLoads *)notification.object;
//        NSLog(@"%@", payload.payloadString);
//    }
    
    NSDictionary *userinfoPayload = notification.userInfo; // Declare userinfoPayload

    if (userinfoPayload == notification.userInfo)
    {
        NSLog(@"%@", userinfoPayload[@"Channel"]);
    }
}

@end

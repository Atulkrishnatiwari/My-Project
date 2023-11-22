#import "ViewControllerTwo.h"
#import "Notifications.h"
#import "NotificationPayLoads.h"
@interface ViewControllerTwo ()

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad Was Called of second view controller");
    
    NSLog(@"viewDidLoad Was Called of second view controller");
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(notificationReceived:)
                                                     name:Notifications.ViewControllerPublishNotification
                                                   object:nil];
}

- (void)viewWillAppear:(BOOL)animated 
{
    [super viewWillAppear:YES];
    NSLog(@"View Will Appear was called of second view controller");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)notificationReceived:(NSNotification *)notification 
{
    NSLog(@"The notification has been received in view controller two");
//    NSLog(@"%@", notification.userInfo);
//    
//    if ([notification.object isKindOfClass:[NotificationPayLoads class]])
//    {
//        NotificationPayLoads *payload = (NotificationPayLoads *)notification.object;
//        NSLog(@"%@", payload.payloadString);
//    }
    NSDictionary *userinfoPayload = notification.userInfo; // Declare userinfoPayload

    if (userinfoPayload == notification.userInfo)
    {
        NSLog(@"%@", userinfoPayload[@"Channel"]);
        self.label.text=[NSString stringWithFormat:@"%@",userinfoPayload[@"Channel"]];
    }
}

- (void)viewWillDisappear:(BOOL)animated 
{
    [super viewWillDisappear:YES];
}

@end

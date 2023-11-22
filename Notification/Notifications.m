#import "Notifications.h"

@implementation Notifications

static NSString *_viewControllerPublishNotification = @"ViewControllerPublishEvent";

+ (NSString *)ViewControllerPublishNotification 
{
    return _viewControllerPublishNotification;
}

@end

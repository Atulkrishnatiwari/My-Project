//
//  NotificationPayLoads.m
//  Notification
//
//  Created by Celestial on 16/11/23.
//

#import "NotificationPayLoads.h"

@implementation NotificationPayLoads

- (instancetype)initWithPayload:(NSString *)payload
{
    self = [super init];
    if (self)
    {
        _payloadString = payload;
    }
    return self;
}

@end

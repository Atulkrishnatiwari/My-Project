//
//  NotificationPayLoads.h
//  Notification
//
//  Created by Celestial on 16/11/23.
//

#import <Foundation/Foundation.h>

@interface NotificationPayLoads : NSObject

@property (nonatomic, strong) NSString *payloadString;

- (instancetype)initWithPayload:(NSString *)payload;
@end

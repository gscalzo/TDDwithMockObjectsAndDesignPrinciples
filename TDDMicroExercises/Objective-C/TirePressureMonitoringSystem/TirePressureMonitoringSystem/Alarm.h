//
//  Alarm.h
//  TirePressureMonitoringSystem
//
//  Created by Giordano Scalzo on 21/02/2014.
//  Copyright (c) 2014 Giordano Scalzo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Alarm : NSObject

- (void)check;
- (BOOL)isAlarmOn;

@end

//
//  Alarm.m
//  TirePressureMonitoringSystem
//
//  Created by Giordano Scalzo on 21/02/2014.
//  Copyright (c) 2014 Giordano Scalzo. All rights reserved.
//

#import "Alarm.h"
#import "Sensor.h"

@interface Alarm () {
     Sensor *sensor;
     BOOL alarmOn;
}


@end

@implementation Alarm

const double lowPressureThreshold = 17;
const double highPressureThreshold = 21;

- (id)init
{
    self = [super init];
    if (self) {
        sensor = [Sensor new];
    }
    return self;
}

- (void)check
{
    double psiPressureValue = [sensor popNextPressurePsiValue];
    
    if (psiPressureValue < lowPressureThreshold || highPressureThreshold < psiPressureValue) {
        alarmOn = YES;
    }
}

- (BOOL)isAlarmOn
{
    return alarmOn;
}

@end

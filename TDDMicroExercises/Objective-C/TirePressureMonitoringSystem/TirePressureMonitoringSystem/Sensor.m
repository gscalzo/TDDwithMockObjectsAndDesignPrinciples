//
//  Sensor.m
//  TirePressureMonitoringSystem
//
//  Created by Giordano Scalzo on 21/02/2014.
//  Copyright (c) 2014 Giordano Scalzo. All rights reserved.
//

#import "Sensor.h"

#define double4random() (arc4random() % ((unsigned)RAND_MAX + 1))

@implementation Sensor

const double OFFSET = 16;

-(double)popNextPressurePsiValue
{
    double pressureTelemetryValue;
    pressureTelemetryValue = [self samplePressure];
    
    return OFFSET + pressureTelemetryValue;
}

-(double)samplePressure
{
    // placeholder implementation that simulate a real sensor in a real tire
    double pressureTelemetryValue = 6 * double4random() * double4random();
    return pressureTelemetryValue;
}

@end

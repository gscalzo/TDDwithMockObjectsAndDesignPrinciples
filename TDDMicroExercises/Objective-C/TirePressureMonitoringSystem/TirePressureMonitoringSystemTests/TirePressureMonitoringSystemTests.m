//
//  TirePressureMonitoringSystemTests.m
//  TirePressureMonitoringSystemTests
//
//  Created by Giordano Scalzo on 21/02/2014.
//  Copyright (c) 2014 Giordano Scalzo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Alarm.h"

@interface TirePressureMonitoringSystemTests : XCTestCase

@end

@implementation TirePressureMonitoringSystemTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testAlarmDoesSomething
{
    Alarm *alarm = [Alarm new];
    [alarm check];
}
@end

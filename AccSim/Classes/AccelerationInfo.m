//
//  AccelerationInfo.m
//  AccSim
//
//  Created by Otto Chrons on 9/26/08.
//  Copyright 2008 Enzymia Ltd.. All rights reserved.
//

#import "AccelerationInfo.h"


@implementation AccelerationInfo

@synthesize deviceID;
@synthesize absTime;
@synthesize x, y, z;
@synthesize btnPressed;

+ (AccelerationInfo*)createWithTimestamp:(NSTimeInterval)timeStamp X:(UIAccelerationValue)x Y:(UIAccelerationValue)y Z:(UIAccelerationValue)z BTN:(NSInteger*)btnPressed
{
	AccelerationInfo *newInfo = [AccelerationInfo alloc];

	newInfo.absTime = timeStamp;
    
    
    NSString *UUID = [NSUUID UUID].UUIDString;
    

	newInfo.deviceID = UUID;
	newInfo.x = x;
	newInfo.y = y;
	newInfo.z = z;
    newInfo.btnPressed = btnPressed;
	
	return newInfo;
}

@end

#import "HIChartsJSONSerializableSubclass.h"
#import "HIPoints.h"

@implementation HIPoints

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPoints *copyPoints = [[HIPoints allocWithZone: zone] init];
	copyPoints.y = [self.y copyWithZone: zone];
	copyPoints.x = [self.x copyWithZone: zone];
	copyPoints.xAxis = [self.xAxis copyWithZone: zone];
	copyPoints.yAxis = [self.yAxis copyWithZone: zone];
	return copyPoints;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	return params;
}

# pragma mark - Setters

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setXAxis:(id)xAxis {
	_xAxis = xAxis;
	[self updateNSObject:@"xAxis"];
}

-(void)setYAxis:(id)yAxis {
	_yAxis = yAxis;
	[self updateNSObject:@"yAxis"];
}

@end
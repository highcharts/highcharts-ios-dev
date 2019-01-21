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
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setXAxis:(id)xAxis {
	id oldValue = _xAxis;
	_xAxis = xAxis;
	[self updateNSObject:oldValue newValue:xAxis propertyName:@"xAxis"];
}

-(void)setYAxis:(id)yAxis {
	id oldValue = _yAxis;
	_yAxis = yAxis;
	[self updateNSObject:oldValue newValue:yAxis propertyName:@"yAxis"];
}

@end
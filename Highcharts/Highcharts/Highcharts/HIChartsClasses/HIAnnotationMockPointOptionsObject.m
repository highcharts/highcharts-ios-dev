#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnotationMockPointOptionsObject.h"

@implementation HIAnnotationMockPointOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnotationMockPointOptionsObject *copyAnnotationMockPointOptionsObject = [[HIAnnotationMockPointOptionsObject allocWithZone: zone] init];
	copyAnnotationMockPointOptionsObject.x = [self.x copyWithZone: zone];
	copyAnnotationMockPointOptionsObject.xAxis = [self.xAxis copyWithZone: zone];
	copyAnnotationMockPointOptionsObject.y = [self.y copyWithZone: zone];
	copyAnnotationMockPointOptionsObject.yAxis = [self.yAxis copyWithZone: zone];
	return copyAnnotationMockPointOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	return params;
}

# pragma mark - Setters

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setXAxis:(NSNumber *)xAxis {
  NSNumber *oldValue = _xAxis;
	_xAxis = xAxis;
	[self updateNSObject:oldValue newValue:xAxis propertyName:@"xAxis"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setYAxis:(NSNumber *)yAxis {
  NSNumber *oldValue = _yAxis;
	_yAxis = yAxis;
	[self updateNSObject:oldValue newValue:yAxis propertyName:@"yAxis"];
}

@end

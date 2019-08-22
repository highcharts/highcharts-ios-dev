#import "HIChartsJSONSerializableSubclass.h"
#import "HIPointStatesSelectOptionsObject.h"

@implementation HIPointStatesSelectOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPointStatesSelectOptionsObject *copyPointStatesSelectOptionsObject = [[HIPointStatesSelectOptionsObject allocWithZone: zone] init];
	copyPointStatesSelectOptionsObject.enabled = [self.enabled copyWithZone: zone];
	copyPointStatesSelectOptionsObject.fillColor = [self.fillColor copyWithZone: zone];
	copyPointStatesSelectOptionsObject.lineColor = [self.lineColor copyWithZone: zone];
	copyPointStatesSelectOptionsObject.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPointStatesSelectOptionsObject.radius = [self.radius copyWithZone: zone];
	return copyPointStatesSelectOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

@end
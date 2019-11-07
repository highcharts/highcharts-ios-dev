#import "HIChartsJSONSerializableSubclass.h"
#import "HITimelineDataLabelsOptionsObject.h"

@implementation HITimelineDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITimelineDataLabelsOptionsObject *copyTimelineDataLabelsOptionsObject = [[HITimelineDataLabelsOptionsObject allocWithZone: zone] init];
	copyTimelineDataLabelsOptionsObject.alternate = [self.alternate copyWithZone: zone];
	copyTimelineDataLabelsOptionsObject.connectorColor = [self.connectorColor copyWithZone: zone];
	copyTimelineDataLabelsOptionsObject.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyTimelineDataLabelsOptionsObject.distance = [self.distance copyWithZone: zone];
	copyTimelineDataLabelsOptionsObject.formatter = [self.formatter copyWithZone: zone];
	copyTimelineDataLabelsOptionsObject.width = [self.width copyWithZone: zone];
	return copyTimelineDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.alternate) {
		params[@"alternate"] = self.alternate;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = [self.connectorColor getData];
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

# pragma mark - Setters

-(void)setAlternate:(NSNumber *)alternate {
	NSNumber *oldValue = _alternate;
	_alternate = alternate;
	[self updateNSObject:oldValue newValue:alternate propertyName:@"alternate"];
}

-(void)setConnectorColor:(HIColor *)connectorColor {
	HIColor *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateHIObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	NSNumber *oldValue = _connectorWidth;
	_connectorWidth = connectorWidth;
	[self updateNSObject:oldValue newValue:connectorWidth propertyName:@"connectorWidth"];
}

-(void)setDistance:(NSNumber *)distance {
	NSNumber *oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

@end
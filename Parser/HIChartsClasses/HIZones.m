#import "HIChartsJSONSerializableSubclass.h"
#import "HIZones.h"

@implementation HIZones

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIZones *copyZones = [[HIZones allocWithZone: zone] init];
	copyZones.className = [self.className copyWithZone: zone];
	copyZones.marker = [self.marker copyWithZone: zone];
	copyZones.from = [self.from copyWithZone: zone];
	copyZones.to = [self.to copyWithZone: zone];
	copyZones.color = [self.color copyWithZone: zone];
	copyZones.dashStyle = [self.dashStyle copyWithZone: zone];
	copyZones.fillColor = [self.fillColor copyWithZone: zone];
	copyZones.value = [self.value copyWithZone: zone];
	return copyZones;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setFrom:(NSNumber *)from {
	NSNumber *oldValue = _from;
	_from = from;
	[self updateNSObject:oldValue newValue:from propertyName:@"from"];
}

-(void)setTo:(NSNumber *)to {
	NSNumber *oldValue = _to;
	_to = to;
	[self updateNSObject:oldValue newValue:to propertyName:@"to"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	NSString *oldValue = _dashStyle;
	_dashStyle = dashStyle;
	[self updateNSObject:oldValue newValue:dashStyle propertyName:@"dashStyle"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

@end
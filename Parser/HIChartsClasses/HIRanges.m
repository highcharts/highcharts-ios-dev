#import "HIChartsJSONSerializableSubclass.h"
#import "HIRanges.h"

@implementation HIRanges

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRanges *copyRanges = [[HIRanges allocWithZone: zone] init];
	copyRanges.borderColor = [self.borderColor copyWithZone: zone];
	copyRanges.color = [self.color copyWithZone: zone];
	copyRanges.connectorColor = [self.connectorColor copyWithZone: zone];
	copyRanges.value = [self.value copyWithZone: zone];
	return copyRanges;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = [self.connectorColor getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setConnectorColor:(HIColor *)connectorColor {
	HIColor *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateHIObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

@end
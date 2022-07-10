#import "HIChartsJSONSerializableSubclass.h"
#import "HIDial.h"

@implementation HIDial

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDial *copyDial = [[HIDial allocWithZone: zone] init];
	copyDial.borderColor = [self.borderColor copyWithZone: zone];
	copyDial.rearLength = [self.rearLength copyWithZone: zone];
	copyDial.baseLength = [self.baseLength copyWithZone: zone];
	copyDial.radius = [self.radius copyWithZone: zone];
	copyDial.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDial.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyDial.topWidth = [self.topWidth copyWithZone: zone];
	copyDial.path = [self.path copyWithZone: zone];
	copyDial.baseWidth = [self.baseWidth copyWithZone: zone];
	return copyDial;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.rearLength) {
		params[@"rearLength"] = self.rearLength;
	}
	if (self.baseLength) {
		params[@"baseLength"] = self.baseLength;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.topWidth) {
		params[@"topWidth"] = self.topWidth;
	}
	if (self.path) {
		params[@"path"] = self.path;
	}
	if (self.baseWidth) {
		params[@"baseWidth"] = self.baseWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setRearLength:(NSString *)rearLength {
	NSString *oldValue = _rearLength;
	_rearLength = rearLength;
	[self updateNSObject:oldValue newValue:rearLength propertyName:@"rearLength"];
}

-(void)setBaseLength:(NSString *)baseLength {
	NSString *oldValue = _baseLength;
	_baseLength = baseLength;
	[self updateNSObject:oldValue newValue:baseLength propertyName:@"baseLength"];
}

-(void)setRadius:(NSString *)radius {
	NSString *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setTopWidth:(NSNumber *)topWidth {
	NSNumber *oldValue = _topWidth;
	_topWidth = topWidth;
	[self updateNSObject:oldValue newValue:topWidth propertyName:@"topWidth"];
}

-(void)setPath:(id)path {
	id oldValue = _path;
	_path = path;
	[self updateNSObject:oldValue newValue:path propertyName:@"path"];
}

-(void)setBaseWidth:(NSNumber *)baseWidth {
	NSNumber *oldValue = _baseWidth;
	_baseWidth = baseWidth;
	[self updateNSObject:oldValue newValue:baseWidth propertyName:@"baseWidth"];
}

@end
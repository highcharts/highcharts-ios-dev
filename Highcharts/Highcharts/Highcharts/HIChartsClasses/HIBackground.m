#import "HIChartsJSONSerializableSubclass.h"
#import "HIBackground.h"

@implementation HIBackground

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBackground *copyBackground = [[HIBackground allocWithZone: zone] init];
	copyBackground.borderColor = [self.borderColor copyWithZone: zone];
	copyBackground.outerRadius = [self.outerRadius copyWithZone: zone];
	copyBackground.borderRadius = [self.borderRadius copyWithZone: zone];
	copyBackground.innerRadius = [self.innerRadius copyWithZone: zone];
	copyBackground.className = [self.className copyWithZone: zone];
	copyBackground.shape = [self.shape copyWithZone: zone];
	copyBackground.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBackground.backgroundColor = [self.backgroundColor copyWithZone: zone];
	return copyBackground;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.outerRadius) {
		params[@"outerRadius"] = self.outerRadius;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setOuterRadius:(id)outerRadius {
	id oldValue = _outerRadius;
	_outerRadius = outerRadius;
	[self updateNSObject:oldValue newValue:outerRadius propertyName:@"outerRadius"];
}

-(void)setBorderRadius:(id)borderRadius {
	id oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setInnerRadius:(id)innerRadius {
	id oldValue = _innerRadius;
	_innerRadius = innerRadius;
	[self updateNSObject:oldValue newValue:innerRadius propertyName:@"innerRadius"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setShape:(NSString *)shape {
	NSString *oldValue = _shape;
	_shape = shape;
	[self updateNSObject:oldValue newValue:shape propertyName:@"shape"];
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

@end
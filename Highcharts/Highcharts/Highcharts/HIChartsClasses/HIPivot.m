#import "HIChartsJSONSerializableSubclass.h"
#import "HIPivot.h"

@implementation HIPivot

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPivot *copyPivot = [[HIPivot allocWithZone: zone] init];
	copyPivot.borderColor = [self.borderColor copyWithZone: zone];
	copyPivot.radius = [self.radius copyWithZone: zone];
	copyPivot.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPivot.backgroundColor = [self.backgroundColor copyWithZone: zone];
	return copyPivot;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
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
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
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

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIDial.h"

@implementation HIDial

-(instancetype)init {
	return [super init];
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
	if (self.baseWidth) {
		params[@"baseWidth"] = self.baseWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setRearLength:(NSString *)rearLength {
	_rearLength = rearLength;
	[self updateNSObject:@"rearLength"];
}

-(void)setBaseLength:(NSString *)baseLength {
	_baseLength = baseLength;
	[self updateNSObject:@"baseLength"];
}

-(void)setRadius:(NSString *)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setTopWidth:(NSNumber *)topWidth {
	_topWidth = topWidth;
	[self updateNSObject:@"topWidth"];
}

-(void)setBaseWidth:(NSNumber *)baseWidth {
	_baseWidth = baseWidth;
	[self updateNSObject:@"baseWidth"];
}

@end
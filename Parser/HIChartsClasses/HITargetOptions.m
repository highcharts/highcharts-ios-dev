#import "HIChartsJSONSerializableSubclass.h"
#import "HITargetOptions.h"

@implementation HITargetOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITargetOptions *copyTargetOptions = [[HITargetOptions allocWithZone: zone] init];
	copyTargetOptions.borderColor = [self.borderColor copyWithZone: zone];
	copyTargetOptions.color = [self.color copyWithZone: zone];
	copyTargetOptions.width = [self.width copyWithZone: zone];
	copyTargetOptions.borderWidth = [self.borderWidth copyWithZone: zone];
	copyTargetOptions.height = [self.height copyWithZone: zone];
	return copyTargetOptions;
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
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.height) {
		params[@"height"] = self.height;
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

-(void)setWidth:(id)width {
	id oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

@end
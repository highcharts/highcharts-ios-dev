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
	copyTargetOptions.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTargetOptions.height = [self.height copyWithZone: zone];
	copyTargetOptions.width = [self.width copyWithZone: zone];
	copyTargetOptions.borderWidth = [self.borderWidth copyWithZone: zone];
	copyTargetOptions.color = [self.color copyWithZone: zone];
	return copyTargetOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
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

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

@end
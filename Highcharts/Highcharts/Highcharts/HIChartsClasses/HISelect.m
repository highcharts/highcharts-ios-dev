#import "HIChartsJSONSerializableSubclass.h"
#import "HISelect.h"

@implementation HISelect

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISelect *copySelect = [[HISelect allocWithZone: zone] init];
	copySelect.radius = [self.radius copyWithZone: zone];
	copySelect.lineWidth = [self.lineWidth copyWithZone: zone];
	copySelect.enabled = [self.enabled copyWithZone: zone];
	copySelect.fillColor = [self.fillColor copyWithZone: zone];
	copySelect.lineColor = [self.lineColor copyWithZone: zone];
	copySelect.width = [self.width copyWithZone: zone];
	copySelect.heightPlus = [self.heightPlus copyWithZone: zone];
	copySelect.widthPlus = [self.widthPlus copyWithZone: zone];
	copySelect.height = [self.height copyWithZone: zone];
	copySelect.borderColor = [self.borderColor copyWithZone: zone];
	copySelect.color = [self.color copyWithZone: zone];
	copySelect.animation = [self.animation copyWithZone: zone];
	copySelect.style = [self.style copyWithZone: zone];
	copySelect.fill = [self.fill copyWithZone: zone];
	copySelect.lineWidthPlus = [self.lineWidthPlus copyWithZone: zone];
	copySelect.halo = [self.halo copyWithZone: zone];
	return copySelect;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.heightPlus) {
		params[@"heightPlus"] = self.heightPlus;
	}
	if (self.widthPlus) {
		params[@"widthPlus"] = self.widthPlus;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

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

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setHeightPlus:(NSNumber *)heightPlus {
	NSNumber *oldValue = _heightPlus;
	_heightPlus = heightPlus;
	[self updateNSObject:oldValue newValue:heightPlus propertyName:@"heightPlus"];
}

-(void)setWidthPlus:(NSNumber *)widthPlus {
	NSNumber *oldValue = _widthPlus;
	_widthPlus = widthPlus;
	[self updateNSObject:oldValue newValue:widthPlus propertyName:@"widthPlus"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

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

-(void)setAnimation:(HIAnimation *)animation {
	HIAnimation *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setFill:(NSString *)fill {
	NSString *oldValue = _fill;
	_fill = fill;
	[self updateNSObject:oldValue newValue:fill propertyName:@"fill"];
}

-(void)setLineWidthPlus:(NSNumber *)lineWidthPlus {
	NSNumber *oldValue = _lineWidthPlus;
	_lineWidthPlus = lineWidthPlus;
	[self updateNSObject:oldValue newValue:lineWidthPlus propertyName:@"lineWidthPlus"];
}

-(void)setHalo:(HIHalo *)halo {
	HIHalo *oldValue = _halo;
	_halo = halo;
	[self updateHIObject:oldValue newValue:halo propertyName:@"halo"];
}

@end
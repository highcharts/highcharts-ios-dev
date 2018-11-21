#import "HIChartsJSONSerializableSubclass.h"
#import "HISelect.h"

@implementation HISelect

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISelect *copySelect = [[HISelect allocWithZone: zone] init];
	copySelect.enabled = [self.enabled copyWithZone: zone];
	copySelect.lineWidth = [self.lineWidth copyWithZone: zone];
	copySelect.radius = [self.radius copyWithZone: zone];
	copySelect.fillColor = [self.fillColor copyWithZone: zone];
	copySelect.lineColor = [self.lineColor copyWithZone: zone];
	copySelect.color = [self.color copyWithZone: zone];
	copySelect.borderColor = [self.borderColor copyWithZone: zone];
	copySelect.animation = [self.animation copyWithZone: zone];
	copySelect.lineWidthPlus = [self.lineWidthPlus copyWithZone: zone];
	copySelect.halo = [self.halo copyWithZone: zone];
	return copySelect;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
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

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setRadius:(NSNumber *)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setLineWidthPlus:(NSNumber *)lineWidthPlus {
	_lineWidthPlus = lineWidthPlus;
	[self updateNSObject:@"lineWidthPlus"];
}

-(void)setHalo:(HIHalo *)halo {
	HIHalo *oldValue = _halo;
	if(self.halo) {
		[self removeObserver:self forKeyPath:@"halo.isUpdated"];
	}
	_halo = halo;
	[self updateHIObject:oldValue newValue:halo propertyName:@"halo"];
}

@end
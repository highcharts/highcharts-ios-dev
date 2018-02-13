#import "HIChartsJSONSerializableSubclass.h"
#import "HIHover.h"

@implementation HIHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setRadiusPlus:(NSNumber *)radiusPlus {
	_radiusPlus = radiusPlus;
	[self updateNSObject:@"radiusPlus"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setAnimation:(HIAnimation *)animation {
	HIAnimation *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
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

-(void)setRadius:(NSNumber *)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

-(void)setBrightness:(NSNumber *)brightness {
	_brightness = brightness;
	[self updateNSObject:@"brightness"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	_linkOpacity = linkOpacity;
	[self updateNSObject:@"linkOpacity"];
}

-(void)setBorderColor:(NSString *)borderColor {
	_borderColor = borderColor;
	[self updateNSObject:@"borderColor"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setShadow:(NSNumber *)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

@end
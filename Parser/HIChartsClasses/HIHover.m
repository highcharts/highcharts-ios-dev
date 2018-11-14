#import "HIChartsJSONSerializableSubclass.h"
#import "HIHover.h"

@implementation HIHover

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHover *copyHover = [[HIHover allocWithZone: zone] init];
	copyHover.radiusPlus = [self.radiusPlus copyWithZone: zone];
	copyHover.enabled = [self.enabled copyWithZone: zone];
	copyHover.animation = [self.animation copyWithZone: zone];
	copyHover.lineWidth = [self.lineWidth copyWithZone: zone];
	copyHover.lineWidthPlus = [self.lineWidthPlus copyWithZone: zone];
	copyHover.halo = [self.halo copyWithZone: zone];
	copyHover.fillColor = [self.fillColor copyWithZone: zone];
	copyHover.lineColor = [self.lineColor copyWithZone: zone];
	copyHover.radius = [self.radius copyWithZone: zone];
	copyHover.brightness = [self.brightness copyWithZone: zone];
	copyHover.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyHover.borderColor = [self.borderColor copyWithZone: zone];
	copyHover.opacity = [self.opacity copyWithZone: zone];
	copyHover.shadow = [self.shadow copyWithZone: zone];
	copyHover.color = [self.color copyWithZone: zone];
	return copyHover;
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
		params[@"fillColor"] = self.fillColor;
	}
	if (self.lineColor) {
		params[@"lineColor"] = self.lineColor;
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
		params[@"color"] = self.color;
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

-(void)setFillColor:(NSString *)fillColor {
	_fillColor = fillColor;
	[self updateNSObject:@"fillColor"];
}

-(void)setLineColor:(NSString *)lineColor {
	_lineColor = lineColor;
	[self updateNSObject:@"lineColor"];
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

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

@end
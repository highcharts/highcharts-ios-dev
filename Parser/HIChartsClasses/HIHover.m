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
	copyHover.borderColor = [self.borderColor copyWithZone: zone];
	copyHover.opacity = [self.opacity copyWithZone: zone];
	copyHover.width = [self.width copyWithZone: zone];
	copyHover.heightPlus = [self.heightPlus copyWithZone: zone];
	copyHover.lineWidthPlus = [self.lineWidthPlus copyWithZone: zone];
	copyHover.widthPlus = [self.widthPlus copyWithZone: zone];
	copyHover.height = [self.height copyWithZone: zone];
	copyHover.enabled = [self.enabled copyWithZone: zone];
	copyHover.radius = [self.radius copyWithZone: zone];
	copyHover.fillColor = [self.fillColor copyWithZone: zone];
	copyHover.lineColor = [self.lineColor copyWithZone: zone];
	copyHover.lineWidth = [self.lineWidth copyWithZone: zone];
	copyHover.animation = [self.animation copyWithZone: zone];
	copyHover.halo = [self.halo copyWithZone: zone];
	copyHover.brightness = [self.brightness copyWithZone: zone];
	copyHover.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyHover.shadow = [self.shadow copyWithZone: zone];
	copyHover.color = [self.color copyWithZone: zone];
	copyHover.connectorWidthPlus = [self.connectorWidthPlus copyWithZone: zone];
	return copyHover;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.heightPlus) {
		params[@"heightPlus"] = self.heightPlus;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.widthPlus) {
		params[@"widthPlus"] = self.widthPlus;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
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
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.connectorWidthPlus) {
		params[@"connectorWidthPlus"] = self.connectorWidthPlus;
	}
	return params;
}

# pragma mark - Setters

-(void)setRadiusPlus:(NSNumber *)radiusPlus {
	NSNumber *oldValue = _radiusPlus;
	_radiusPlus = radiusPlus;
	[self updateNSObject:oldValue newValue:radiusPlus propertyName:@"radiusPlus"];
}

-(void)setBorderColor:(NSString *)borderColor {
	NSString *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateNSObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
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

-(void)setLineWidthPlus:(NSNumber *)lineWidthPlus {
	NSNumber *oldValue = _lineWidthPlus;
	_lineWidthPlus = lineWidthPlus;
	[self updateNSObject:oldValue newValue:lineWidthPlus propertyName:@"lineWidthPlus"];
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

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
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

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setHalo:(HIHalo *)halo {
	HIHalo *oldValue = _halo;
	_halo = halo;
	[self updateHIObject:oldValue newValue:halo propertyName:@"halo"];
}

-(void)setBrightness:(NSNumber *)brightness {
	NSNumber *oldValue = _brightness;
	_brightness = brightness;
	[self updateNSObject:oldValue newValue:brightness propertyName:@"brightness"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	NSNumber *oldValue = _linkOpacity;
	_linkOpacity = linkOpacity;
	[self updateNSObject:oldValue newValue:linkOpacity propertyName:@"linkOpacity"];
}

-(void)setShadow:(NSNumber *)shadow {
	NSNumber *oldValue = _shadow;
	_shadow = shadow;
	[self updateNSObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setConnectorWidthPlus:(NSNumber *)connectorWidthPlus {
	NSNumber *oldValue = _connectorWidthPlus;
	_connectorWidthPlus = connectorWidthPlus;
	[self updateNSObject:oldValue newValue:connectorWidthPlus propertyName:@"connectorWidthPlus"];
}

@end
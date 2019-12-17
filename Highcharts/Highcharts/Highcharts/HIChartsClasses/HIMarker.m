#import "HIChartsJSONSerializableSubclass.h"
#import "HIMarker.h"

@implementation HIMarker

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMarker *copyMarker = [[HIMarker allocWithZone: zone] init];
	copyMarker.symbol = [self.symbol copyWithZone: zone];
	copyMarker.lineWidth = [self.lineWidth copyWithZone: zone];
	copyMarker.radius = [self.radius copyWithZone: zone];
	copyMarker.lineColor = [self.lineColor copyWithZone: zone];
	copyMarker.enabled = [self.enabled copyWithZone: zone];
	copyMarker.height = [self.height copyWithZone: zone];
	copyMarker.width = [self.width copyWithZone: zone];
	copyMarker.fillColor = [self.fillColor copyWithZone: zone];
	copyMarker.states = [self.states copyWithZone: zone];
	copyMarker.color = [self.color copyWithZone: zone];
	copyMarker.animation = [self.animation copyWithZone: zone];
	copyMarker.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyMarker.enabledThreshold = [self.enabledThreshold copyWithZone: zone];
	return copyMarker;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.lineColor) {
		params[@"lineColor"] = self.lineColor;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.enabledThreshold) {
		params[@"enabledThreshold"] = self.enabledThreshold;
	}
	return params;
}

# pragma mark - Setters

-(void)setSymbol:(NSString *)symbol {
	NSString *oldValue = _symbol;
	_symbol = symbol;
	[self updateNSObject:oldValue newValue:symbol propertyName:@"symbol"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setLineColor:(NSString *)lineColor {
	NSString *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateNSObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	NSNumber *oldValue = _fillOpacity;
	_fillOpacity = fillOpacity;
	[self updateNSObject:oldValue newValue:fillOpacity propertyName:@"fillOpacity"];
}

-(void)setEnabledThreshold:(NSNumber *)enabledThreshold {
	NSNumber *oldValue = _enabledThreshold;
	_enabledThreshold = enabledThreshold;
	[self updateNSObject:oldValue newValue:enabledThreshold propertyName:@"enabledThreshold"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HILowMarker.h"

@implementation HILowMarker

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILowMarker *copyLowMarker = [[HILowMarker allocWithZone: zone] init];
	copyLowMarker.symbol = [self.symbol copyWithZone: zone];
	copyLowMarker.enabled = [self.enabled copyWithZone: zone];
	copyLowMarker.height = [self.height copyWithZone: zone];
	copyLowMarker.states = [self.states copyWithZone: zone];
	copyLowMarker.width = [self.width copyWithZone: zone];
	copyLowMarker.radius = [self.radius copyWithZone: zone];
	copyLowMarker.fillColor = [self.fillColor copyWithZone: zone];
	copyLowMarker.lineColor = [self.lineColor copyWithZone: zone];
	copyLowMarker.lineWidth = [self.lineWidth copyWithZone: zone];
	copyLowMarker.enabledThreshold = [self.enabledThreshold copyWithZone: zone];
	return copyLowMarker;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.width) {
		params[@"width"] = self.width;
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

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
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

-(void)setEnabledThreshold:(NSNumber *)enabledThreshold {
	NSNumber *oldValue = _enabledThreshold;
	_enabledThreshold = enabledThreshold;
	[self updateNSObject:oldValue newValue:enabledThreshold propertyName:@"enabledThreshold"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIMarker.h"

@implementation HIMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.lineColor) {
		params[@"lineColor"] = self.lineColor;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.enabledThreshold) {
		params[@"enabledThreshold"] = self.enabledThreshold;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setAnimation:(HIAnimation *)animation {
	HIAnimation *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	if(self.states) {
		[self removeObserver:self forKeyPath:@"states.isUpdated"];
	}
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setSymbol:(NSString *)symbol {
	_symbol = symbol;
	[self updateNSObject:@"symbol"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

-(void)setLineColor:(id)lineColor {
	_lineColor = lineColor;
	[self updateNSObject:@"lineColor"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setEnabledThreshold:(NSNumber *)enabledThreshold {
	_enabledThreshold = enabledThreshold;
	[self updateNSObject:@"enabledThreshold"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setRadius:(NSNumber *)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

@end
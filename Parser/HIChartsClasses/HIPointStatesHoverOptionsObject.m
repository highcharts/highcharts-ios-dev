#import "HIChartsJSONSerializableSubclass.h"
#import "HIPointStatesHoverOptionsObject.h"

@implementation HIPointStatesHoverOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPointStatesHoverOptionsObject *copyPointStatesHoverOptionsObject = [[HIPointStatesHoverOptionsObject allocWithZone: zone] init];
	copyPointStatesHoverOptionsObject.animation = [self.animation copyWithZone: zone];
	copyPointStatesHoverOptionsObject.enabled = [self.enabled copyWithZone: zone];
	copyPointStatesHoverOptionsObject.fillColor = [self.fillColor copyWithZone: zone];
	copyPointStatesHoverOptionsObject.lineColor = [self.lineColor copyWithZone: zone];
	copyPointStatesHoverOptionsObject.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPointStatesHoverOptionsObject.lineWidthPlus = [self.lineWidthPlus copyWithZone: zone];
	copyPointStatesHoverOptionsObject.radius = [self.radius copyWithZone: zone];
	copyPointStatesHoverOptionsObject.radiusPlus = [self.radiusPlus copyWithZone: zone];
	return copyPointStatesHoverOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
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
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	return params;
}

# pragma mark - Setters

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
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

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setLineWidthPlus:(NSNumber *)lineWidthPlus {
	NSNumber *oldValue = _lineWidthPlus;
	_lineWidthPlus = lineWidthPlus;
	[self updateNSObject:oldValue newValue:lineWidthPlus propertyName:@"lineWidthPlus"];
}

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setRadiusPlus:(NSNumber *)radiusPlus {
	NSNumber *oldValue = _radiusPlus;
	_radiusPlus = radiusPlus;
	[self updateNSObject:oldValue newValue:radiusPlus propertyName:@"radiusPlus"];
}

@end
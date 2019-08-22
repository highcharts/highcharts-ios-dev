#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotBands.h"

@implementation HIPlotBands

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotBands *copyPlotBands = [[HIPlotBands allocWithZone: zone] init];
	copyPlotBands.outerRadius = [self.outerRadius copyWithZone: zone];
	copyPlotBands.innerRadius = [self.innerRadius copyWithZone: zone];
	copyPlotBands.thickness = [self.thickness copyWithZone: zone];
	copyPlotBands.borderColor = [self.borderColor copyWithZone: zone];
	copyPlotBands.zIndex = [self.zIndex copyWithZone: zone];
	copyPlotBands.from = [self.from copyWithZone: zone];
	copyPlotBands.color = [self.color copyWithZone: zone];
	copyPlotBands.className = [self.className copyWithZone: zone];
	copyPlotBands.to = [self.to copyWithZone: zone];
	copyPlotBands.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPlotBands.id = [self.id copyWithZone: zone];
	copyPlotBands.label = [self.label copyWithZone: zone];
	copyPlotBands.events = [self.events copyWithZone: zone];
	return copyPlotBands;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
	if (self.outerRadius) {
		params[@"outerRadius"] = self.outerRadius;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setOuterRadius:(id)outerRadius {
	id oldValue = _outerRadius;
	_outerRadius = outerRadius;
	[self updateNSObject:oldValue newValue:outerRadius propertyName:@"outerRadius"];
}

-(void)setInnerRadius:(id)innerRadius {
	id oldValue = _innerRadius;
	_innerRadius = innerRadius;
	[self updateNSObject:oldValue newValue:innerRadius propertyName:@"innerRadius"];
}

-(void)setThickness:(id)thickness {
	id oldValue = _thickness;
	_thickness = thickness;
	[self updateNSObject:oldValue newValue:thickness propertyName:@"thickness"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setFrom:(NSNumber *)from {
	NSNumber *oldValue = _from;
	_from = from;
	[self updateNSObject:oldValue newValue:from propertyName:@"from"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setTo:(NSNumber *)to {
	NSNumber *oldValue = _to;
	_to = to;
	[self updateNSObject:oldValue newValue:to propertyName:@"to"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setLabel:(HILabel *)label {
	HILabel *oldValue = _label;
	_label = label;
	[self updateHIObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

- (void)destroy {
    self.jsClassMethod = @{ @"class" : @"PlotLineOrBand", @"method" : @"destroy", @"id" : self.uuid };
}

@end
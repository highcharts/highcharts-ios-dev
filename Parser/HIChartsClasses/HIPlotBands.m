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
	copyPlotBands.id = [self.id copyWithZone: zone];
	copyPlotBands.className = [self.className copyWithZone: zone];
	copyPlotBands.to = [self.to copyWithZone: zone];
	copyPlotBands.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPlotBands.label = [self.label copyWithZone: zone];
	copyPlotBands.events = [self.events copyWithZone: zone];
	return copyPlotBands;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.id) {
		params[@"id"] = self.id;
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
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	return params;
}

# pragma mark - Setters

-(void)setOuterRadius:(id)outerRadius {
	_outerRadius = outerRadius;
	[self updateNSObject:@"outerRadius"];
}

-(void)setInnerRadius:(id)innerRadius {
	_innerRadius = innerRadius;
	[self updateNSObject:@"innerRadius"];
}

-(void)setThickness:(id)thickness {
	_thickness = thickness;
	[self updateNSObject:@"thickness"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setFrom:(NSNumber *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setLabel:(HILabel *)label {
	HILabel *oldValue = _label;
	if(self.label) {
		[self removeObserver:self forKeyPath:@"label.isUpdated"];
	}
	_label = label;
	[self updateHIObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setEvents:(id)events {
	_events = events;
	[self updateNSObject:@"events"];
}

@end
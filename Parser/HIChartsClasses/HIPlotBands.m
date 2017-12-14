#import "HIPlotBands.h"

@implementation HIPlotBands

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.outerRadius) {
		params[@"outerRadius"] = self.outerRadius;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	return params;
}

# pragma mark - Setters

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
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

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setFrom:(NSNumber *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

-(void)setEvents:(id)events {
	_events = events;
	[self updateNSObject:@"events"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setThickness:(id)thickness {
	_thickness = thickness;
	[self updateNSObject:@"thickness"];
}

-(void)setOuterRadius:(id)outerRadius {
	_outerRadius = outerRadius;
	[self updateNSObject:@"outerRadius"];
}

-(void)setInnerRadius:(id)innerRadius {
	_innerRadius = innerRadius;
	[self updateNSObject:@"innerRadius"];
}

@end
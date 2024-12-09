#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotLines.h"

@implementation HIPlotLines

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotLines *copyPlotLines = [[HIPlotLines allocWithZone: zone] init];
	copyPlotLines.zIndex = [self.zIndex copyWithZone: zone];
	copyPlotLines.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPlotLines.color = [self.color copyWithZone: zone];
	copyPlotLines.labels = [self.labels copyWithZone: zone];
	copyPlotLines.label = [self.label copyWithZone: zone];
	copyPlotLines.value = [self.value copyWithZone: zone];
	copyPlotLines.events = [self.events copyWithZone: zone];
	copyPlotLines.className = [self.className copyWithZone: zone];
	copyPlotLines.width = [self.width copyWithZone: zone];
	copyPlotLines.id = [self.id copyWithZone: zone];
	return copyPlotLines;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	NSString *oldValue = _dashStyle;
	_dashStyle = dashStyle;
	[self updateNSObject:oldValue newValue:dashStyle propertyName:@"dashStyle"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setLabel:(HILabel *)label {
	HILabel *oldValue = _label;
	_label = label;
	[self updateHIObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setValue:(id)value {
	id oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

- (void)destroy {
    self.jsClassMethod = @{ @"class" : @"PlotLineOrBand", @"method" : @"destroy", @"id" : self.uuid };
}

@end
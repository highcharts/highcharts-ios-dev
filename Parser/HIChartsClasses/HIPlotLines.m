#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotLines.h"

@implementation HIPlotLines

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIPlotLines *copyPlotLines = [[HIPlotLines allocWithZone: zone] init];
	copyPlotLines.zIndex = [self.zIndex copyWithZone: zone];
	copyPlotLines.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPlotLines.color = [self.color copyWithZone: zone];
	copyPlotLines.value = [self.value copyWithZone: zone];
	copyPlotLines.id = [self.id copyWithZone: zone];
	copyPlotLines.className = [self.className copyWithZone: zone];
	copyPlotLines.width = [self.width copyWithZone: zone];
	copyPlotLines.label = [self.label copyWithZone: zone];
	copyPlotLines.events = [self.events copyWithZone: zone];
	return copyPlotLines;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.width) {
		params[@"width"] = self.width;
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

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setValue:(NSNumber *)value {
	_value = value;
	[self updateNSObject:@"value"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
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
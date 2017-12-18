#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotLines.h"

@implementation HIPlotLines

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
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

-(void)setEvents:(id)events {
	_events = events;
	[self updateNSObject:@"events"];
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

@end
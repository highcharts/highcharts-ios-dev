#import "HIChartsJSONSerializableSubclass.h"
#import "HIPoint.h"

@implementation HIPoint

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPoint *copyPoint = [[HIPoint allocWithZone: zone] init];
	copyPoint.descriptionFormatter = [self.descriptionFormatter copyWithZone: zone];
	copyPoint.valueDescriptionFormat = [self.valueDescriptionFormat copyWithZone: zone];
	copyPoint.valueSuffix = [self.valueSuffix copyWithZone: zone];
	copyPoint.dateFormat = [self.dateFormat copyWithZone: zone];
	copyPoint.dateFormatter = [self.dateFormatter copyWithZone: zone];
	copyPoint.valuePrefix = [self.valuePrefix copyWithZone: zone];
	copyPoint.valueDecimals = [self.valueDecimals copyWithZone: zone];
	copyPoint.category = [self.category copyWithZone: zone];
	copyPoint.color = [self.color copyWithZone: zone];
	copyPoint.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPoint.name = [self.name copyWithZone: zone];
	copyPoint.percentage = [self.percentage copyWithZone: zone];
	copyPoint.plotX = [self.plotX copyWithZone: zone];
	copyPoint.plotY = [self.plotY copyWithZone: zone];
	copyPoint.selected = [self.selected copyWithZone: zone];
	copyPoint.series = [self.series copyWithZone: zone];
	copyPoint.sliced = [self.sliced copyWithZone: zone];
	copyPoint.total = [self.total copyWithZone: zone];
	copyPoint.visible = [self.visible copyWithZone: zone];
	copyPoint.x = [self.x copyWithZone: zone];
	copyPoint.y = [self.y copyWithZone: zone];
	copyPoint.events = [self.events copyWithZone: zone];
	return copyPoint;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
	if (self.descriptionFormatter) {
		params[@"descriptionFormatter"] = [self.descriptionFormatter getFunction];
	}
	if (self.valueDescriptionFormat) {
		params[@"valueDescriptionFormat"] = self.valueDescriptionFormat;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.dateFormatter) {
		params[@"dateFormatter"] = [self.dateFormatter getFunction];
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.category) {
		params[@"category"] = self.category;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.percentage) {
		params[@"percentage"] = self.percentage;
	}
	if (self.plotX) {
		params[@"plotX"] = self.plotX;
	}
	if (self.plotY) {
		params[@"plotY"] = self.plotY;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	if (self.sliced) {
		params[@"sliced"] = self.sliced;
	}
	if (self.total) {
		params[@"total"] = self.total;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setDescriptionFormatter:(HIFunction *)descriptionFormatter {
	HIFunction *oldValue = _descriptionFormatter;
	_descriptionFormatter = descriptionFormatter;
	[self updateHIObject:oldValue newValue:descriptionFormatter propertyName:@"descriptionFormatter"];
}

-(void)setValueDescriptionFormat:(NSString *)valueDescriptionFormat {
	NSString *oldValue = _valueDescriptionFormat;
	_valueDescriptionFormat = valueDescriptionFormat;
	[self updateNSObject:oldValue newValue:valueDescriptionFormat propertyName:@"valueDescriptionFormat"];
}

-(void)setValueSuffix:(NSString *)valueSuffix {
	NSString *oldValue = _valueSuffix;
	_valueSuffix = valueSuffix;
	[self updateNSObject:oldValue newValue:valueSuffix propertyName:@"valueSuffix"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	NSString *oldValue = _dateFormat;
	_dateFormat = dateFormat;
	[self updateNSObject:oldValue newValue:dateFormat propertyName:@"dateFormat"];
}

-(void)setDateFormatter:(HIFunction *)dateFormatter {
	HIFunction *oldValue = _dateFormatter;
	_dateFormatter = dateFormatter;
	[self updateHIObject:oldValue newValue:dateFormatter propertyName:@"dateFormatter"];
}

-(void)setValuePrefix:(NSString *)valuePrefix {
	NSString *oldValue = _valuePrefix;
	_valuePrefix = valuePrefix;
	[self updateNSObject:oldValue newValue:valuePrefix propertyName:@"valuePrefix"];
}

-(void)setValueDecimals:(NSNumber *)valueDecimals {
	NSNumber *oldValue = _valueDecimals;
	_valueDecimals = valueDecimals;
	[self updateNSObject:oldValue newValue:valueDecimals propertyName:@"valueDecimals"];
}

-(void)setCategory:(NSString *)category {
	NSString *oldValue = _category;
	_category = category;
	[self updateNSObject:oldValue newValue:category propertyName:@"category"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	NSNumber *oldValue = _colorIndex;
	_colorIndex = colorIndex;
	[self updateNSObject:oldValue newValue:colorIndex propertyName:@"colorIndex"];
}

-(void)setName:(NSString *)name {
	NSString *oldValue = _name;
	_name = name;
	[self updateNSObject:oldValue newValue:name propertyName:@"name"];
}

-(void)setPercentage:(NSNumber *)percentage {
	NSNumber *oldValue = _percentage;
	_percentage = percentage;
	[self updateNSObject:oldValue newValue:percentage propertyName:@"percentage"];
}

-(void)setPlotX:(NSNumber *)plotX {
	NSNumber *oldValue = _plotX;
	_plotX = plotX;
	[self updateNSObject:oldValue newValue:plotX propertyName:@"plotX"];
}

-(void)setPlotY:(NSNumber *)plotY {
	NSNumber *oldValue = _plotY;
	_plotY = plotY;
	[self updateNSObject:oldValue newValue:plotY propertyName:@"plotY"];
}

-(void)setSelected:(NSNumber *)selected {
	NSNumber *oldValue = _selected;
	_selected = selected;
	[self updateNSObject:oldValue newValue:selected propertyName:@"selected"];
}

-(void)setSeries:(HISeries *)series {
	HISeries *oldValue = _series;
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setSliced:(NSNumber *)sliced {
	NSNumber *oldValue = _sliced;
	_sliced = sliced;
	[self updateNSObject:oldValue newValue:sliced propertyName:@"sliced"];
}

-(void)setTotal:(NSNumber *)total {
	NSNumber *oldValue = _total;
	_total = total;
	[self updateNSObject:oldValue newValue:total propertyName:@"total"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

- (void)cancelSonify {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"cancelSonify0", @"id" : self.uuid };
}

- (void)cancelSonify:(NSNumber *)fadeOut {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"cancelSonify1", @"id" : self.uuid, @"params" : @[fadeOut] };
}

- (void)onMouseOut {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"onMouseOut", @"id" : self.uuid };
}

- (void)onMouseOver {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"onMouseOver", @"id" : self.uuid };
}

- (void)remove:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"remove0", @"id" : self.uuid, @"params" : @[redraw] };
}

- (void)remove:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"remove1", @"id" : self.uuid, @"params" : @[redraw, [animation getParams]] };
}

- (void)select {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"select0", @"id" : self.uuid };
}

- (void)select:(NSNumber *)selected {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"select1", @"id" : self.uuid, @"params" : @[selected] };
}

- (void)select:(NSNumber *)selected accumulate:(NSNumber *)accumulate {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"select2", @"id" : self.uuid, @"params" : @[selected, accumulate] };
}

- (void)setNestedProperty:(id)object value:(id)value key:(NSString *)key {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setNestedProperty", @"id" : self.uuid, @"params" : @[object, value, key] };
}

- (void)setState {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setState0", @"id" : self.uuid };
}

- (void)setState:(NSString *)state {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setState1", @"id" : self.uuid, @"params" : @[state] };
}

- (void)setState:(NSString *)state move:(NSNumber *)move {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setState2", @"id" : self.uuid, @"params" : @[state, move] };
}

- (void)sonify:(NSDictionary *)options {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"sonify", @"id" : self.uuid, @"params" : @[options] };
}

- (void)tooltipFormatter:(NSString *)pointFormat {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"tooltipFormatter", @"id" : self.uuid, @"params" : @[pointFormat] };
}

- (void)update:(HIPoint *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params] };
}

- (void)update:(HIPoint *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw] };
}

- (void)update:(HIPoint *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"update2", @"id" : self.uuid, @"params" : @[params, redraw, [animation getParams]] };
}

@end
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
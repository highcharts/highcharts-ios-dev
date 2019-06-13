#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabelsFilterOptionsObject.h"

@implementation HIDataLabelsFilterOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabelsFilterOptionsObject *copyDataLabelsFilterOptionsObject = [[HIDataLabelsFilterOptionsObject allocWithZone: zone] init];
	copyDataLabelsFilterOptionsObject.operator = [self.operator copyWithZone: zone];
	copyDataLabelsFilterOptionsObject.property = [self.property copyWithZone: zone];
	copyDataLabelsFilterOptionsObject.value = [self.value copyWithZone: zone];
	return copyDataLabelsFilterOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.operator) {
		params[@"operator"] = self.operator;
	}
	if (self.property) {
		params[@"property"] = self.property;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setOperator:(NSString *)operator {
	NSString *oldValue = _operator;
	_operator = operator;
	[self updateNSObject:oldValue newValue:operator propertyName:@"operator"];
}

-(void)setProperty:(NSString *)property {
	NSString *oldValue = _property;
	_property = property;
	[self updateNSObject:oldValue newValue:property propertyName:@"property"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

@end
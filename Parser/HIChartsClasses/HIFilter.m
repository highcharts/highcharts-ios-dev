#import "HIChartsJSONSerializableSubclass.h"
#import "HIFilter.h"

@implementation HIFilter

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIFilter *copyFilter = [[HIFilter allocWithZone: zone] init];
	copyFilter.operator = [self.operator copyWithZone: zone];
	copyFilter.property = [self.property copyWithZone: zone];
	copyFilter.value = [self.value copyWithZone: zone];
	return copyFilter;
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
	_operator = operator;
	[self updateNSObject:@"operator"];
}

-(void)setProperty:(NSString *)property {
	_property = property;
	[self updateNSObject:@"property"];
}

-(void)setValue:(id)value {
	_value = value;
	[self updateNSObject:@"value"];
}

@end
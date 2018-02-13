#import "HIChartsJSONSerializableSubclass.h"
#import "HIFilter.h"

@implementation HIFilter

-(instancetype)init {
	return [super init];
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
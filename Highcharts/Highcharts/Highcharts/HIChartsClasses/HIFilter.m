#import "HIFilter.h"

@implementation HIFilter

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.property) {
		params[@"property"] = self.property;
	}
	if (self.operator) {
		params[@"operator"] = self.operator;
	}
	return params;
}

# pragma mark - Setters

-(void)setValue:(id)value {
	_value = value;
	[self updateNSObject:@"value"];
}

-(void)setProperty:(NSString *)property {
	_property = property;
	[self updateNSObject:@"property"];
}

-(void)setOperator:(NSString *)operator {
	_operator = operator;
	[self updateNSObject:@"operator"];
}

@end
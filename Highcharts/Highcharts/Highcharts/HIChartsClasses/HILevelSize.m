#import "HIChartsJSONSerializableSubclass.h"
#import "HILevelSize.h"

@implementation HILevelSize

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.unit) {
		params[@"unit"] = self.unit;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setUnit:(NSString *)unit {
	_unit = unit;
	[self updateNSObject:@"unit"];
}

-(void)setValue:(NSNumber *)value {
	_value = value;
	[self updateNSObject:@"value"];
}

@end
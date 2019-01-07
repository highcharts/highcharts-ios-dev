#import "HIChartsJSONSerializableSubclass.h"
#import "HILevelSize.h"

@implementation HILevelSize

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILevelSize *copyLevelSize = [[HILevelSize allocWithZone: zone] init];
	copyLevelSize.value = [self.value copyWithZone: zone];
	copyLevelSize.unit = [self.unit copyWithZone: zone];
	return copyLevelSize;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.unit) {
		params[@"unit"] = self.unit;
	}
	return params;
}

# pragma mark - Setters

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

-(void)setUnit:(NSString *)unit {
	NSString *oldValue = _unit;
	_unit = unit;
	[self updateNSObject:oldValue newValue:unit propertyName:@"unit"];
}

@end
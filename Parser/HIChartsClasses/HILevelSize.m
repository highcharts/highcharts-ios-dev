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
	_value = value;
	[self updateNSObject:@"value"];
}

-(void)setUnit:(NSString *)unit {
	_unit = unit;
	[self updateNSObject:@"unit"];
}

@end
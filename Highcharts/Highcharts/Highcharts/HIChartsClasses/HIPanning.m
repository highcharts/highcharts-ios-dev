#import "HIChartsJSONSerializableSubclass.h"
#import "HIPanning.h"

@implementation HIPanning

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPanning *copyPanning = [[HIPanning allocWithZone: zone] init];
	copyPanning.type = [self.type copyWithZone: zone];
	copyPanning.enabled = [self.enabled copyWithZone: zone];
	return copyPanning;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
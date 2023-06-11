#import "HIChartsJSONSerializableSubclass.h"
#import "HIMouseWheel.h"

@implementation HIMouseWheel

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMouseWheel *copyMouseWheel = [[HIMouseWheel allocWithZone: zone] init];
	copyMouseWheel.type = [self.type copyWithZone: zone];
	copyMouseWheel.sensitivity = [self.sensitivity copyWithZone: zone];
	copyMouseWheel.enabled = [self.enabled copyWithZone: zone];
	return copyMouseWheel;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.sensitivity) {
		params[@"sensitivity"] = self.sensitivity;
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

-(void)setSensitivity:(NSNumber *)sensitivity {
	NSNumber *oldValue = _sensitivity;
	_sensitivity = sensitivity;
	[self updateNSObject:oldValue newValue:sensitivity propertyName:@"sensitivity"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
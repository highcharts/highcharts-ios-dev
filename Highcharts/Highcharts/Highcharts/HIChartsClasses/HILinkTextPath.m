#import "HIChartsJSONSerializableSubclass.h"
#import "HILinkTextPath.h"

@implementation HILinkTextPath

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILinkTextPath *copyLinkTextPath = [[HILinkTextPath allocWithZone: zone] init];
	copyLinkTextPath.enabled = [self.enabled copyWithZone: zone];
	return copyLinkTextPath;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
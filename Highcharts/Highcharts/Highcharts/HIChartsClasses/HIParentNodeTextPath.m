#import "HIChartsJSONSerializableSubclass.h"
#import "HIParentNodeTextPath.h"

@implementation HIParentNodeTextPath

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIParentNodeTextPath *copyParentNodeTextPath = [[HIParentNodeTextPath allocWithZone: zone] init];
	copyParentNodeTextPath.enabled = [self.enabled copyWithZone: zone];
	return copyParentNodeTextPath;
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
#import "HIChartsJSONSerializableSubclass.h"
#import "HIPointStatesInactiveOptionsObject.h"

@implementation HIPointStatesInactiveOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPointStatesInactiveOptionsObject *copyPointStatesInactiveOptionsObject = [[HIPointStatesInactiveOptionsObject allocWithZone: zone] init];
	copyPointStatesInactiveOptionsObject.opacity = [self.opacity copyWithZone: zone];
	return copyPointStatesInactiveOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	return params;
}

# pragma mark - Setters

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

@end
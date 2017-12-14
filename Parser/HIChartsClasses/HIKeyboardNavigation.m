#import "HIKeyboardNavigation.h"

@implementation HIKeyboardNavigation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.skipNullPoints) {
		params[@"skipNullPoints"] = self.skipNullPoints;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setSkipNullPoints:(NSNumber *)skipNullPoints {
	_skipNullPoints = skipNullPoints;
	[self updateNSObject:@"skipNullPoints"];
}

@end
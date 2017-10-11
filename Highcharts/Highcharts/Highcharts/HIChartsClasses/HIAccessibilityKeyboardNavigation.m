#import "HIAccessibilityKeyboardNavigation.h"

@implementation HIAccessibilityKeyboardNavigation

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

@end
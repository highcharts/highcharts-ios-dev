#import "AccessibilityKeyboardNavigation.h"

@implementation AccessibilityKeyboardNavigation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.skipNullPoints) {
		params[@"skipNullPoints"] = self.skipNullPoints;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end
#import "HINavigationMenuItemHoverStyle.h"

@implementation HINavigationMenuItemHoverStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.background) {
		params[@"background"] = self.background;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	return params;
}

@end
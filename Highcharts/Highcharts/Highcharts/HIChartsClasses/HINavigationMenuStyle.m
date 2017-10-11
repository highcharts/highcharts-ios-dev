#import "HINavigationMenuStyle.h"

@implementation HINavigationMenuStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	if (self.border) {
		params[@"border"] = self.border;
	}
	return params;
}

@end
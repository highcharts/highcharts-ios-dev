#import "HINavigationButtonOptionsTheme.h"

@implementation HINavigationButtonOptionsTheme

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	return params;
}

@end
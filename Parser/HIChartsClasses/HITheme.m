#import "HITheme.h"

@implementation HITheme

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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

@end
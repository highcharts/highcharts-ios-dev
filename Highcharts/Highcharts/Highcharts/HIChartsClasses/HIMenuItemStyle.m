#import "HIMenuItemStyle.h"

@implementation HIMenuItemStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.transition) {
		params[@"transition"] = self.transition;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	return params;
}

@end
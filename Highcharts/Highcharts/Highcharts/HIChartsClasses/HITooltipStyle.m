#import "HITooltipStyle.h"

@implementation HITooltipStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.pointerEvents) {
		params[@"pointerEvents"] = self.pointerEvents;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.whiteSpace) {
		params[@"whiteSpace"] = self.whiteSpace;
	}
	return params;
}

@end
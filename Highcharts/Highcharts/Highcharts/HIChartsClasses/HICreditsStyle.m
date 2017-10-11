#import "HICreditsStyle.h"

@implementation HICreditsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	return params;
}

@end
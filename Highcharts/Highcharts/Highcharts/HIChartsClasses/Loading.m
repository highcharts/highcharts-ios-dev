#import "Loading.h"

@implementation Loading

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.showDuration) {
		params[@"showDuration"] = self.showDuration;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.labelStyle) {
		params[@"labelStyle"] = self.labelStyle;
	}
	if (self.hideDuration) {
		params[@"hideDuration"] = self.hideDuration;
	}
	return params;
}

@end
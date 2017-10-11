#import "HILoading.h"

@implementation HILoading

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labelStyle) {
		params[@"labelStyle"] = [self.labelStyle getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.showDuration) {
		params[@"showDuration"] = self.showDuration;
	}
	if (self.hideDuration) {
		params[@"hideDuration"] = self.hideDuration;
	}
	return params;
}

@end
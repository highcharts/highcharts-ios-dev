#import "HIResetZoomButton.h"

@implementation HIResetZoomButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.relativeTo) {
		params[@"relativeTo"] = self.relativeTo;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	return params;
}

@end
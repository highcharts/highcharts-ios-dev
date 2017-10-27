#import "HILabelStyle.h"

@implementation HILabelStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.top) {
		params[@"top"] = self.top;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	return params;
}

@end
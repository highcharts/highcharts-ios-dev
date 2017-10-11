#import "HILoadingStyle.h"

@implementation HILoadingStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	return params;
}

@end
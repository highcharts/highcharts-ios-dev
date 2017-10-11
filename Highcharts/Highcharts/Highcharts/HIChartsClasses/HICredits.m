#import "HICredits.h"

@implementation HICredits

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.href) {
		params[@"href"] = self.href;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	return params;
}

@end
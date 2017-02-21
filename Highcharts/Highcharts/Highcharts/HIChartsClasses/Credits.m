#import "Credits.h"

@implementation Credits

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.href) {
		params[@"href"] = self.href;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end
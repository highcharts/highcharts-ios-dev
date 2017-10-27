#import "HIHalo.h"

@implementation HIHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.attributes) {
		params[@"attributes"] = self.attributes;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end
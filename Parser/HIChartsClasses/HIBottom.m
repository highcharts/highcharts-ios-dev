#import "HIBottom.h"

@implementation HIBottom

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end
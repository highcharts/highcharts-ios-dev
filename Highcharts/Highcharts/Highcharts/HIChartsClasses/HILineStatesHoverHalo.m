#import "HILineStatesHoverHalo.h"

@implementation HILineStatesHoverHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.attributes) {
		params[@"attributes"] = self.attributes;
	}
	return params;
}

@end
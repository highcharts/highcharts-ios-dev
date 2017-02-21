#import "AreasplineStatesHoverHalo.h"

@implementation AreasplineStatesHoverHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.attributes) {
		params[@"attributes"] = self.attributes;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

@end
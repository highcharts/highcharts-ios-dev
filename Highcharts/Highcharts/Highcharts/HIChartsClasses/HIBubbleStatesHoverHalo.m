#import "HIBubbleStatesHoverHalo.h"

@implementation HIBubbleStatesHoverHalo

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
	return params;
}

@end
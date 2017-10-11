#import "HITilemapStatesHoverHaloAttributes.h"

@implementation HITilemapStatesHoverHaloAttributes

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

@end
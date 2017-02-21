#import "ColumnStatesHoverHalo.h"

@implementation ColumnStatesHoverHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.attributes) {
		params[@"attributes"] = self.attributes;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	return params;
}

@end
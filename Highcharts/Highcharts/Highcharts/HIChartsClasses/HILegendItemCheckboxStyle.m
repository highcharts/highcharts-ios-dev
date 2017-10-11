#import "HILegendItemCheckboxStyle.h"

@implementation HILegendItemCheckboxStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	return params;
}

@end
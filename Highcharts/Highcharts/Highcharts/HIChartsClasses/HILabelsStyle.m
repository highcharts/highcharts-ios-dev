#import "HILabelsStyle.h"

@implementation HILabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	return params;
}

@end
#import "HINodes.h"

@implementation HINodes

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end
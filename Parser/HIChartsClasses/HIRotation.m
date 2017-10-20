#import "HIRotation.h"

@implementation HIRotation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.orientations) {
		params[@"orientations"] = self.orientations;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	return params;
}

@end
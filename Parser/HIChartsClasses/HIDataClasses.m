#import "HIDataClasses.h"

@implementation HIDataClasses

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	return params;
}

@end
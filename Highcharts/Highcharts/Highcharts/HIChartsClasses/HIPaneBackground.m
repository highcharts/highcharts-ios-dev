#import "HIPaneBackground.h"

@implementation HIPaneBackground

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.outerRadius) {
		params[@"outerRadius"] = self.outerRadius;
	}
	return params;
}

@end
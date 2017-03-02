#import "HIGaugePivot.h"

@implementation HIGaugePivot

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	return params;
}

@end
#import "PlotOptionsGaugePivot.h"

@implementation PlotOptionsGaugePivot

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	return params;
}

@end
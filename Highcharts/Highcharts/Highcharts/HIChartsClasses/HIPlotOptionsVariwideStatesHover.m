#import "HIPlotOptionsVariwideStatesHover.h"

@implementation HIPlotOptionsVariwideStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	return params;
}

@end
#import "HIPlotOptionsBarStatesHover.h"

@implementation HIPlotOptionsBarStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end
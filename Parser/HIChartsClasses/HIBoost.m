#import "HIBoost.h"

@implementation HIBoost

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.debug) {
		params[@"debug"] = [self.debug getParams];
	}
	if (self.allowForce) {
		params[@"allowForce"] = self.allowForce;
	}
	if (self.useGPUTranslations) {
		params[@"useGPUTranslations"] = self.useGPUTranslations;
	}
	if (self.seriesThreshold) {
		params[@"seriesThreshold"] = self.seriesThreshold;
	}
	return params;
}

@end
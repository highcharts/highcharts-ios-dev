#import "HILegendNavigation.h"

@implementation HILegendNavigation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.inactiveColor) {
		params[@"inactiveColor"] = [self.inactiveColor getData];
	}
	if (self.arrowSize) {
		params[@"arrowSize"] = self.arrowSize;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.activeColor) {
		params[@"activeColor"] = [self.activeColor getData];
	}
	return params;
}

@end
#import "HIPieZones.h"

@implementation HIPieZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	return params;
}

@end
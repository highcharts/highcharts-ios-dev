#import "HIWaterfallZones.h"

@implementation HIWaterfallZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end
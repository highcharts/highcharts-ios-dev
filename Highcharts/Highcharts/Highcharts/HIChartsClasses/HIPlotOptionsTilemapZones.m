#import "HIPlotOptionsTilemapZones.h"

@implementation HIPlotOptionsTilemapZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

@end
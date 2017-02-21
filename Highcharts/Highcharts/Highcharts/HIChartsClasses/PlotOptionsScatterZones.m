#import "PlotOptionsScatterZones.h"

@implementation PlotOptionsScatterZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end
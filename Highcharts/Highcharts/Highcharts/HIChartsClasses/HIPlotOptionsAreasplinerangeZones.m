#import "HIPlotOptionsAreasplinerangeZones.h"

@implementation HIPlotOptionsAreasplinerangeZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end
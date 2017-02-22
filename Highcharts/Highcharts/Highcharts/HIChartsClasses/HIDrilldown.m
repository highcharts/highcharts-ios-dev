#import "HIDrilldown.h"

@implementation HIDrilldown

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowPointDrilldown) {
		params[@"allowPointDrilldown"] = self.allowPointDrilldown;
	}
	if (self.activeAxisLabelStyle) {
		params[@"activeAxisLabelStyle"] = self.activeAxisLabelStyle;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.series) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.series) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"series"] = array;
	}
	if (self.drillUpButton) {
		params[@"drillUpButton"] = [self.drillUpButton getParams];
	}
	if (self.activeDataLabelStyle) {
		params[@"activeDataLabelStyle"] = self.activeDataLabelStyle;
	}
	return params;
}

@end
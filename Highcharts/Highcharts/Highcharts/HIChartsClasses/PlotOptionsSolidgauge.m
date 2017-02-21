#import "PlotOptionsSolidgauge.h"

@implementation PlotOptionsSolidgauge

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.keys) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.keys) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"keys"] = array;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	return params;
}

@end
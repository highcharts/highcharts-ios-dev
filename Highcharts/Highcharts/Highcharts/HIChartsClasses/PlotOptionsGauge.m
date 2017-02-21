#import "PlotOptionsGauge.h"

@implementation PlotOptionsGauge

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.dial) {
		params[@"dial"] = [self.dial getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.pivot) {
		params[@"pivot"] = [self.pivot getParams];
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	return params;
}

@end
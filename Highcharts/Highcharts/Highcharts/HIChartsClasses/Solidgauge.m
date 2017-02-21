#import "Solidgauge.h"

@implementation Solidgauge

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.data) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.data) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"data"] = array;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
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
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	return params;
}

@end
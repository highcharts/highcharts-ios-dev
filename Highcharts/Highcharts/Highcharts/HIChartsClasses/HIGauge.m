#import "HIGauge.h"

@implementation HIGauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"gauge";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.pivot) {
		params[@"pivot"] = [self.pivot getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
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
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
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
	if (self.dial) {
		params[@"dial"] = [self.dial getParams];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	return params;
}

@end
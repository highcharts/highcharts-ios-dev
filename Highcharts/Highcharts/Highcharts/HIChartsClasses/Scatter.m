#import "Scatter.h"

@implementation Scatter

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.states) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.states) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"states"] = array;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.zones) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.zones) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"zones"] = array;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
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
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
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
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	return params;
}

@end
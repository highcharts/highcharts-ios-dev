#import "Bubble.h"

@implementation Bubble

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
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
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
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
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.sizeByAbsoluteValue) {
		params[@"sizeByAbsoluteValue"] = self.sizeByAbsoluteValue;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.displayNegative) {
		params[@"displayNegative"] = self.displayNegative;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.name) {
		params[@"name"] = self.name;
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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
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
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	return params;
}

@end
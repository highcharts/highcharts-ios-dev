#import "Polygon.h"

@implementation Polygon

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
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
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
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
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
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
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
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
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	return params;
}

@end
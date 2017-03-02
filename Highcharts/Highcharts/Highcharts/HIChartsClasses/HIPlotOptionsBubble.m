#import "HIPlotOptionsBubble.h"

@implementation HIPlotOptionsBubble

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
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
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
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
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.displayNegative) {
		params[@"displayNegative"] = self.displayNegative;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
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
	if (self.sizeByAbsoluteValue) {
		params[@"sizeByAbsoluteValue"] = self.sizeByAbsoluteValue;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	return params;
}

@end
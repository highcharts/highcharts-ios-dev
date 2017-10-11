#import "HIPlotOptionsLine.h"

@implementation HIPlotOptionsLine

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.exposeElementToA11y) {
		params[@"exposeElementToA11y"] = self.exposeElementToA11y;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointDescriptionFormatter];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.findNearestPointBy) {
		params[@"findNearestPointBy"] = self.findNearestPointBy;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.boostThreshold) {
		params[@"boostThreshold"] = self.boostThreshold;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
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
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
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
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.skipKeyboardNavigation) {
		params[@"skipKeyboardNavigation"] = self.skipKeyboardNavigation;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
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
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.connectNulls) {
		params[@"connectNulls"] = self.connectNulls;
	}
	return params;
}

@end
#import "HIPlotOptionsTreemap.h"

@implementation HIPlotOptionsTreemap

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.drillUpButton) {
		params[@"drillUpButton"] = [self.drillUpButton getParams];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointDescriptionFormatter];
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.levels) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.levels) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"levels"] = array;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.findNearestPointBy) {
		params[@"findNearestPointBy"] = self.findNearestPointBy;
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
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.exposeElementToA11y) {
		params[@"exposeElementToA11y"] = self.exposeElementToA11y;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.boostThreshold) {
		params[@"boostThreshold"] = self.boostThreshold;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.interactByLeaf) {
		params[@"interactByLeaf"] = self.interactByLeaf;
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
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
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.connectNulls) {
		params[@"connectNulls"] = self.connectNulls;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.allowDrillToNode) {
		params[@"allowDrillToNode"] = self.allowDrillToNode;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.alternateStartingDirection) {
		params[@"alternateStartingDirection"] = self.alternateStartingDirection;
	}
	if (self.skipKeyboardNavigation) {
		params[@"skipKeyboardNavigation"] = self.skipKeyboardNavigation;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.sortIndex) {
		params[@"sortIndex"] = self.sortIndex;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	return params;
}

@end
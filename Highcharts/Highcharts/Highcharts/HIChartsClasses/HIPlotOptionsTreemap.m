#import "HIPlotOptionsTreemap.h"

@implementation HIPlotOptionsTreemap

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
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
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.interactByLeaf) {
		params[@"interactByLeaf"] = self.interactByLeaf;
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
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
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.sortIndex) {
		params[@"sortIndex"] = self.sortIndex;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.allowDrillToNode) {
		params[@"allowDrillToNode"] = self.allowDrillToNode;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.alternateStartingDirection) {
		params[@"alternateStartingDirection"] = self.alternateStartingDirection;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	return params;
}

@end
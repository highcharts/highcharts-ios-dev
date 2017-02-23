#import "HITreemap.h"

@implementation HITreemap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"treemap";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.allowDrillToNode) {
		params[@"allowDrillToNode"] = self.allowDrillToNode;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
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
	if (self.sortIndex) {
		params[@"sortIndex"] = self.sortIndex;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
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
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.alternateStartingDirection) {
		params[@"alternateStartingDirection"] = self.alternateStartingDirection;
	}
	if (self.interactByLeaf) {
		params[@"interactByLeaf"] = self.interactByLeaf;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
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
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.colors) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"colors"] = array;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
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
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	return params;
}

@end
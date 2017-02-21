#import "PlotOptionsColumn.h"

@implementation PlotOptionsColumn

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
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
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
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
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HexColor *obj in self.colors) {
			[array addObject:[obj getString]];
		}
		params[@"colors"] = array;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getString];
	}
	return params;
}

@end
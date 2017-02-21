#import "PlotOptionsErrorbar.h"

@implementation PlotOptionsErrorbar

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.whiskerLength) {
		params[@"whiskerLength"] = self.whiskerLength;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.stemColor) {
		params[@"stemColor"] = [self.stemColor getString];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HexColor *obj in self.colors) {
			[array addObject:[obj getString]];
		}
		params[@"colors"] = array;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
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
	if (self.visible) {
		params[@"visible"] = self.visible;
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
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
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
	if (self.whiskerColor) {
		params[@"whiskerColor"] = [self.whiskerColor getString];
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getString];
	}
	if (self.stemDashStyle) {
		params[@"stemDashStyle"] = self.stemDashStyle;
	}
	return params;
}

@end
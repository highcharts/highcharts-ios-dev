#import "PlotOptionsSpline.h"

@implementation PlotOptionsSpline

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
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
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.connectNulls) {
		params[@"connectNulls"] = self.connectNulls;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
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
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getString];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	return params;
}

@end
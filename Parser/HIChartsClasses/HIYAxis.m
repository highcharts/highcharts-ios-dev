#import "HIYAxis.h"

@implementation HIYAxis

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.startOfWeek) {
		params[@"startOfWeek"] = self.startOfWeek;
	}
	if (self.floor) {
		params[@"floor"] = self.floor;
	}
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
	}
	if (self.uniqueNames) {
		params[@"uniqueNames"] = self.uniqueNames;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
	}
	if (self.gridLineInterpolation) {
		params[@"gridLineInterpolation"] = self.gridLineInterpolation;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.tickmarkPlacement) {
		params[@"tickmarkPlacement"] = self.tickmarkPlacement;
	}
	if (self.tickPixelInterval) {
		params[@"tickPixelInterval"] = self.tickPixelInterval;
	}
	if (self.crosshair) {
		params[@"crosshair"] = [self.crosshair getParams];
	}
	if (self.minColor) {
		params[@"minColor"] = [self.minColor getData];
	}
	if (self.tickInterval) {
		params[@"tickInterval"] = self.tickInterval;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.gridZIndex) {
		params[@"gridZIndex"] = self.gridZIndex;
	}
	if (self.showEmpty) {
		params[@"showEmpty"] = self.showEmpty;
	}
	if (self.maxColor) {
		params[@"maxColor"] = [self.maxColor getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
	}
	if (self.minorGridLineDashStyle) {
		params[@"minorGridLineDashStyle"] = self.minorGridLineDashStyle;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.tooltipValueFormat) {
		params[@"tooltipValueFormat"] = self.tooltipValueFormat;
	}
	if (self.minRange) {
		params[@"minRange"] = self.minRange;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
	}
	if (self.categories) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.categories) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"categories"] = array;
	}
	if (self.minTickInterval) {
		params[@"minTickInterval"] = self.minTickInterval;
	}
	if (self.minorGridLineWidth) {
		params[@"minorGridLineWidth"] = self.minorGridLineWidth;
	}
	if (self.breaks) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.breaks) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"breaks"] = array;
	}
	if (self.minorTickPosition) {
		params[@"minorTickPosition"] = self.minorTickPosition;
	}
	if (self.endOnTick) {
		params[@"endOnTick"] = self.endOnTick;
	}
	if (self.minorTickWidth) {
		params[@"minorTickWidth"] = self.minorTickWidth;
	}
	if (self.tickLength) {
		params[@"tickLength"] = self.tickLength;
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.minorGridLineColor) {
		params[@"minorGridLineColor"] = [self.minorGridLineColor getData];
	}
	if (self.tickWidth) {
		params[@"tickWidth"] = self.tickWidth;
	}
	if (self.plotLines) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.plotLines) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"plotLines"] = array;
	}
	if (self.angle) {
		params[@"angle"] = self.angle;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.gridLineWidth) {
		params[@"gridLineWidth"] = self.gridLineWidth;
	}
	if (self.plotBands) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.plotBands) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"plotBands"] = array;
	}
	if (self.ceiling) {
		params[@"ceiling"] = self.ceiling;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.tickPositions) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.tickPositions) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"tickPositions"] = array;
	}
	if (self.gridLineDashStyle) {
		params[@"gridLineDashStyle"] = self.gridLineDashStyle;
	}
	if (self.stackLabels) {
		params[@"stackLabels"] = [self.stackLabels getParams];
	}
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.allowDecimals) {
		params[@"allowDecimals"] = self.allowDecimals;
	}
	if (self.units) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.units) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"units"] = array;
	}
	if (self.tickAmount) {
		params[@"tickAmount"] = self.tickAmount;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.minorTickLength) {
		params[@"minorTickLength"] = self.minorTickLength;
	}
	if (self.stops) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.stops) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"stops"] = array;
	}
	if (self.alternateGridColor) {
		params[@"alternateGridColor"] = [self.alternateGridColor getData];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.minorTickInterval) {
		params[@"minorTickInterval"] = self.minorTickInterval;
	}
	if (self.gridLineColor) {
		params[@"gridLineColor"] = [self.gridLineColor getData];
	}
	if (self.showFirstLabel) {
		params[@"showFirstLabel"] = self.showFirstLabel;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.minorTicks) {
		params[@"minorTicks"] = self.minorTicks;
	}
	if (self.opposite) {
		params[@"opposite"] = self.opposite;
	}
	if (self.maxZoom) {
		params[@"maxZoom"] = self.maxZoom;
	}
	if (self.tickPositioner) {
		params[@"tickPositioner"] = [self.tickPositioner getFunction];
	}
	return params;
}

@end
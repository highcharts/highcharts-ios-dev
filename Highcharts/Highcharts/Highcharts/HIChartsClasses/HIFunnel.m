#import "HIFunnel.h"

@implementation HIFunnel

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"funnel";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
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
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.findNearestPointBy) {
		params[@"findNearestPointBy"] = self.findNearestPointBy;
	}
	if (self.boostThreshold) {
		params[@"boostThreshold"] = self.boostThreshold;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointDescriptionFormatter];
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.exposeElementToA11y) {
		params[@"exposeElementToA11y"] = self.exposeElementToA11y;
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
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
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.skipKeyboardNavigation) {
		params[@"skipKeyboardNavigation"] = self.skipKeyboardNavigation;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
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
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.connectNulls) {
		params[@"connectNulls"] = self.connectNulls;
	}
	return params;
}

@end
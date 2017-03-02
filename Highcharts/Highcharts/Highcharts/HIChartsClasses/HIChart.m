#import "HIChart.h"

@implementation HIChart

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.defaultSeriesType) {
		params[@"defaultSeriesType"] = self.defaultSeriesType;
	}
	if (self.options3d) {
		params[@"options3d"] = [self.options3d getParams];
	}
	if (self.typeDescription) {
		params[@"typeDescription"] = self.typeDescription;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.plotBackgroundImage) {
		params[@"plotBackgroundImage"] = self.plotBackgroundImage;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.margin) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.margin) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"margin"] = array;
	}
	if (self.plotBorderWidth) {
		params[@"plotBorderWidth"] = self.plotBorderWidth;
	}
	if (self.marginLeft) {
		params[@"marginLeft"] = self.marginLeft;
	}
	if (self.panKey) {
		params[@"panKey"] = self.panKey;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.showAxes) {
		params[@"showAxes"] = self.showAxes;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.plotBackgroundColor) {
		params[@"plotBackgroundColor"] = [self.plotBackgroundColor getData];
	}
	if (self.plotBorderColor) {
		params[@"plotBorderColor"] = [self.plotBorderColor getData];
	}
	if (self.panning) {
		params[@"panning"] = self.panning;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.renderTo) {
		params[@"renderTo"] = self.renderTo;
	}
	if (self.inverted) {
		params[@"inverted"] = self.inverted;
	}
	if (self.polar) {
		params[@"polar"] = self.polar;
	}
	if (self.pinchType) {
		params[@"pinchType"] = self.pinchType;
	}
	if (self.marginBottom) {
		params[@"marginBottom"] = self.marginBottom;
	}
	if (self.marginRight) {
		params[@"marginRight"] = self.marginRight;
	}
	if (self.colorCount) {
		params[@"colorCount"] = self.colorCount;
	}
	if (self.spacing) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.spacing) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"spacing"] = array;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.reflow) {
		params[@"reflow"] = self.reflow;
	}
	if (self.ignoreHiddenSeries) {
		params[@"ignoreHiddenSeries"] = self.ignoreHiddenSeries;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.spacingTop) {
		params[@"spacingTop"] = self.spacingTop;
	}
	if (self.spacingBottom) {
		params[@"spacingBottom"] = self.spacingBottom;
	}
	if (self.spacingRight) {
		params[@"spacingRight"] = self.spacingRight;
	}
	if (self.marginTop) {
		params[@"marginTop"] = self.marginTop;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.spacingLeft) {
		params[@"spacingLeft"] = self.spacingLeft;
	}
	if (self.plotShadow) {
		params[@"plotShadow"] = self.plotShadow;
	}
	if (self.zoomType) {
		params[@"zoomType"] = self.zoomType;
	}
	if (self.resetZoomButton) {
		params[@"resetZoomButton"] = [self.resetZoomButton getParams];
	}
	if (self.selectionMarkerFill) {
		params[@"selectionMarkerFill"] = [self.selectionMarkerFill getData];
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	return params;
}

@end
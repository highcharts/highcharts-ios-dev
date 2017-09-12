#import "HIYAxisLabels.h"

@implementation HIYAxisLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.maxStaggerLines) {
		params[@"maxStaggerLines"] = self.maxStaggerLines;
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.autoRotation) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.autoRotation) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"autoRotation"] = array;
	}
	if (self.staggerLines) {
		params[@"staggerLines"] = self.staggerLines;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.autoRotationLimit) {
		params[@"autoRotationLimit"] = self.autoRotationLimit;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	return params;
}

@end
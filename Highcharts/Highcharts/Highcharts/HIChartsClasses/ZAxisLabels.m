#import "ZAxisLabels.h"

@implementation ZAxisLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.staggerLines) {
		params[@"staggerLines"] = self.staggerLines;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.maxStaggerLines) {
		params[@"maxStaggerLines"] = self.maxStaggerLines;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.autoRotationLimit) {
		params[@"autoRotationLimit"] = self.autoRotationLimit;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
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
	if (self.style) {
		params[@"style"] = self.style;
	}
	return params;
}

@end
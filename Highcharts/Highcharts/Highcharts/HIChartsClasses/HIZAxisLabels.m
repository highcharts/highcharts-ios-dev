#import "HIZAxisLabels.h"

@implementation HIZAxisLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.staggerLines) {
		params[@"staggerLines"] = self.staggerLines;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.autoRotationLimit) {
		params[@"autoRotationLimit"] = self.autoRotationLimit;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
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
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

@end
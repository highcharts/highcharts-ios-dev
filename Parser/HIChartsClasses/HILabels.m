#import "HILabels.h"

@implementation HILabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.autoRotationLimit) {
		params[@"autoRotationLimit"] = self.autoRotationLimit;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.staggerLines) {
		params[@"staggerLines"] = self.staggerLines;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
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
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.items) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.items) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"items"] = array;
	}
	return params;
}

@end
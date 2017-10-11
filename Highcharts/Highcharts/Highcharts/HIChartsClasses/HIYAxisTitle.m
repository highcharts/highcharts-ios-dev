#import "HIYAxisTitle.h"

@implementation HIYAxisTitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	return params;
}

@end
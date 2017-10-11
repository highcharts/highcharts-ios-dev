#import "HIZAxisTitle.h"

@implementation HIZAxisTitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	return params;
}

@end
#import "HIZAxisPlotBandsLabel.h"

@implementation HIZAxisPlotBandsLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	return params;
}

@end
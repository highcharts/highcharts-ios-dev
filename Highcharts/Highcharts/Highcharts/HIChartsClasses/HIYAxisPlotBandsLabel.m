#import "HIYAxisPlotBandsLabel.h"

@implementation HIYAxisPlotBandsLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	return params;
}

@end
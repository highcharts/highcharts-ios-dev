#import "HIYAxisPlotLinesLabel.h"

@implementation HIYAxisPlotLinesLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.text) {
		params[@"text"] = self.text;
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
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	return params;
}

@end
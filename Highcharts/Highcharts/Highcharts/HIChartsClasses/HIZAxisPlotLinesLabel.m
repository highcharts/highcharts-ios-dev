#import "HIZAxisPlotLinesLabel.h"

@implementation HIZAxisPlotLinesLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	return params;
}

@end
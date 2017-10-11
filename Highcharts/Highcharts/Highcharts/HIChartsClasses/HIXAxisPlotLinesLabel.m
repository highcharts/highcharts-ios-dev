#import "HIXAxisPlotLinesLabel.h"

@implementation HIXAxisPlotLinesLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	return params;
}

@end
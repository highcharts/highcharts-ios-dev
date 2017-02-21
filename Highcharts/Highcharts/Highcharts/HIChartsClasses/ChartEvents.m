#import "ChartEvents.h"

@implementation ChartEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.afterPrint) {
		params[@"afterPrint"] = self.afterPrint;
	}
	if (self.load) {
		params[@"load"] = self.load;
	}
	if (self.drillup) {
		params[@"drillup"] = self.drillup;
	}
	if (self.beforePrint) {
		params[@"beforePrint"] = self.beforePrint;
	}
	if (self.addSeries) {
		params[@"addSeries"] = self.addSeries;
	}
	if (self.selection) {
		params[@"selection"] = self.selection;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.render) {
		params[@"render"] = self.render;
	}
	if (self.redraw) {
		params[@"redraw"] = self.redraw;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.drillupall) {
		params[@"drillupall"] = self.drillupall;
	}
	return params;
}

@end
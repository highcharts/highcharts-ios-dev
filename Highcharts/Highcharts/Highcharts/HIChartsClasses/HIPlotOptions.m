#import "HIPlotOptions.h"

@implementation HIPlotOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.column) {
		params[@"column"] = [self.column getParams];
	}
	if (self.polygon) {
		params[@"polygon"] = [self.polygon getParams];
	}
	if (self.gauge) {
		params[@"gauge"] = [self.gauge getParams];
	}
	if (self.columnrange) {
		params[@"columnrange"] = [self.columnrange getParams];
	}
	if (self.scatter) {
		params[@"scatter"] = [self.scatter getParams];
	}
	if (self.pyramid) {
		params[@"pyramid"] = [self.pyramid getParams];
	}
	if (self.solidgauge) {
		params[@"solidgauge"] = [self.solidgauge getParams];
	}
	if (self.arearange) {
		params[@"arearange"] = [self.arearange getParams];
	}
	if (self.area) {
		params[@"area"] = [self.area getParams];
	}
	if (self.treemap) {
		params[@"treemap"] = [self.treemap getParams];
	}
	if (self.bubble) {
		params[@"bubble"] = [self.bubble getParams];
	}
	if (self.errorbar) {
		params[@"errorbar"] = [self.errorbar getParams];
	}
	if (self.heatmap) {
		params[@"heatmap"] = [self.heatmap getParams];
	}
	if (self.boxplot) {
		params[@"boxplot"] = [self.boxplot getParams];
	}
	if (self.pie) {
		params[@"pie"] = [self.pie getParams];
	}
	if (self.funnel) {
		params[@"funnel"] = [self.funnel getParams];
	}
	if (self.spline) {
		params[@"spline"] = [self.spline getParams];
	}
	if (self.bar) {
		params[@"bar"] = [self.bar getParams];
	}
	if (self.areasplinerange) {
		params[@"areasplinerange"] = [self.areasplinerange getParams];
	}
	if (self.areaspline) {
		params[@"areaspline"] = [self.areaspline getParams];
	}
	if (self.waterfall) {
		params[@"waterfall"] = [self.waterfall getParams];
	}
	if (self.line) {
		params[@"line"] = [self.line getParams];
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	return params;
}

@end
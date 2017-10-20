#import "HIPlotOptions.h"

@implementation HIPlotOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.polygon) {
		params[@"polygon"] = [self.polygon getParams];
	}
	if (self.solidgauge) {
		params[@"solidgauge"] = [self.solidgauge getParams];
	}
	if (self.wordcloud) {
		params[@"wordcloud"] = [self.wordcloud getParams];
	}
	if (self.arearange) {
		params[@"arearange"] = [self.arearange getParams];
	}
	if (self.scatter3d) {
		params[@"scatter3d"] = [self.scatter3d getParams];
	}
	if (self.heatmap) {
		params[@"heatmap"] = [self.heatmap getParams];
	}
	if (self.funnel) {
		params[@"funnel"] = [self.funnel getParams];
	}
	if (self.spline) {
		params[@"spline"] = [self.spline getParams];
	}
	if (self.bullet) {
		params[@"bullet"] = [self.bullet getParams];
	}
	if (self.sunburst) {
		params[@"sunburst"] = [self.sunburst getParams];
	}
	if (self.tilemap) {
		params[@"tilemap"] = [self.tilemap getParams];
	}
	if (self.area) {
		params[@"area"] = [self.area getParams];
	}
	if (self.treemap) {
		params[@"treemap"] = [self.treemap getParams];
	}
	if (self.errorbar) {
		params[@"errorbar"] = [self.errorbar getParams];
	}
	if (self.vector) {
		params[@"vector"] = [self.vector getParams];
	}
	if (self.variwide) {
		params[@"variwide"] = [self.variwide getParams];
	}
	if (self.areaspline) {
		params[@"areaspline"] = [self.areaspline getParams];
	}
	if (self.streamgraph) {
		params[@"streamgraph"] = [self.streamgraph getParams];
	}
	if (self.xrange) {
		params[@"xrange"] = [self.xrange getParams];
	}
	if (self.column) {
		params[@"column"] = [self.column getParams];
	}
	if (self.gauge) {
		params[@"gauge"] = [self.gauge getParams];
	}
	if (self.bubble) {
		params[@"bubble"] = [self.bubble getParams];
	}
	if (self.bar) {
		params[@"bar"] = [self.bar getParams];
	}
	if (self.waterfall) {
		params[@"waterfall"] = [self.waterfall getParams];
	}
	if (self.areasplinerange) {
		params[@"areasplinerange"] = [self.areasplinerange getParams];
	}
	if (self.columnrange) {
		params[@"columnrange"] = [self.columnrange getParams];
	}
	if (self.sankey) {
		params[@"sankey"] = [self.sankey getParams];
	}
	if (self.scatter) {
		params[@"scatter"] = [self.scatter getParams];
	}
	if (self.variablepie) {
		params[@"variablepie"] = [self.variablepie getParams];
	}
	if (self.pyramid) {
		params[@"pyramid"] = [self.pyramid getParams];
	}
	if (self.bellcurve) {
		params[@"bellcurve"] = [self.bellcurve getParams];
	}
	if (self.windbarb) {
		params[@"windbarb"] = [self.windbarb getParams];
	}
	if (self.boxplot) {
		params[@"boxplot"] = [self.boxplot getParams];
	}
	if (self.pie) {
		params[@"pie"] = [self.pie getParams];
	}
	if (self.pareto) {
		params[@"pareto"] = [self.pareto getParams];
	}
	if (self.line) {
		params[@"line"] = [self.line getParams];
	}
	if (self.histogram) {
		params[@"histogram"] = [self.histogram getParams];
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	return params;
}

@end
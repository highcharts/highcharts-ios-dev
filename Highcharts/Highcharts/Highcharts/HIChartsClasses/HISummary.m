#import "HIChartsJSONSerializableSubclass.h"
#import "HISummary.h"

@implementation HISummary

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.pieCombination) {
		params[@"pieCombination"] = self.pieCombination;
	}
	if (self.pie) {
		params[@"pie"] = self.pie;
	}
	if (self.lineCombination) {
		params[@"lineCombination"] = self.lineCombination;
	}
	if (self.mapbubble) {
		params[@"mapbubble"] = self.mapbubble;
	}
	if (self.spline) {
		params[@"spline"] = self.spline;
	}
	if (self.barCombination) {
		params[@"barCombination"] = self.barCombination;
	}
	if (self.boxplotCombination) {
		params[@"boxplotCombination"] = self.boxplotCombination;
	}
	if (self.splineCombination) {
		params[@"splineCombination"] = self.splineCombination;
	}
	if (self.scatterCombination) {
		params[@"scatterCombination"] = self.scatterCombination;
	}
	if (self.maplineCombination) {
		params[@"maplineCombination"] = self.maplineCombination;
	}
	if (self.bubble) {
		params[@"bubble"] = self.bubble;
	}
	if (self.boxplot) {
		params[@"boxplot"] = self.boxplot;
	}
	if (self.columnCombination) {
		params[@"columnCombination"] = self.columnCombination;
	}
	if (self.map) {
		params[@"map"] = self.map;
	}
	if (self.line) {
		params[@"line"] = self.line;
	}
	if (self.mapline) {
		params[@"mapline"] = self.mapline;
	}
	if (self.bar) {
		params[@"bar"] = self.bar;
	}
	if (self.mapCombination) {
		params[@"mapCombination"] = self.mapCombination;
	}
	if (self.defaults) {
		params[@"default"] = self.defaults;
	}
	if (self.mapbubbleCombination) {
		params[@"mapbubbleCombination"] = self.mapbubbleCombination;
	}
	if (self.defaultCombination) {
		params[@"defaultCombination"] = self.defaultCombination;
	}
	if (self.column) {
		params[@"column"] = self.column;
	}
	if (self.bubbleCombination) {
		params[@"bubbleCombination"] = self.bubbleCombination;
	}
	if (self.scatter) {
		params[@"scatter"] = self.scatter;
	}
	return params;
}

# pragma mark - Setters

-(void)setPieCombination:(NSString *)pieCombination {
	_pieCombination = pieCombination;
	[self updateNSObject:@"pieCombination"];
}

-(void)setPie:(NSString *)pie {
	_pie = pie;
	[self updateNSObject:@"pie"];
}

-(void)setLineCombination:(NSString *)lineCombination {
	_lineCombination = lineCombination;
	[self updateNSObject:@"lineCombination"];
}

-(void)setMapbubble:(NSString *)mapbubble {
	_mapbubble = mapbubble;
	[self updateNSObject:@"mapbubble"];
}

-(void)setSpline:(NSString *)spline {
	_spline = spline;
	[self updateNSObject:@"spline"];
}

-(void)setBarCombination:(NSString *)barCombination {
	_barCombination = barCombination;
	[self updateNSObject:@"barCombination"];
}

-(void)setBoxplotCombination:(NSString *)boxplotCombination {
	_boxplotCombination = boxplotCombination;
	[self updateNSObject:@"boxplotCombination"];
}

-(void)setSplineCombination:(NSString *)splineCombination {
	_splineCombination = splineCombination;
	[self updateNSObject:@"splineCombination"];
}

-(void)setScatterCombination:(NSString *)scatterCombination {
	_scatterCombination = scatterCombination;
	[self updateNSObject:@"scatterCombination"];
}

-(void)setMaplineCombination:(NSString *)maplineCombination {
	_maplineCombination = maplineCombination;
	[self updateNSObject:@"maplineCombination"];
}

-(void)setBubble:(NSString *)bubble {
	_bubble = bubble;
	[self updateNSObject:@"bubble"];
}

-(void)setBoxplot:(NSString *)boxplot {
	_boxplot = boxplot;
	[self updateNSObject:@"boxplot"];
}

-(void)setColumnCombination:(NSString *)columnCombination {
	_columnCombination = columnCombination;
	[self updateNSObject:@"columnCombination"];
}

-(void)setMap:(NSString *)map {
	_map = map;
	[self updateNSObject:@"map"];
}

-(void)setLine:(NSString *)line {
	_line = line;
	[self updateNSObject:@"line"];
}

-(void)setMapline:(NSString *)mapline {
	_mapline = mapline;
	[self updateNSObject:@"mapline"];
}

-(void)setBar:(NSString *)bar {
	_bar = bar;
	[self updateNSObject:@"bar"];
}

-(void)setMapCombination:(NSString *)mapCombination {
	_mapCombination = mapCombination;
	[self updateNSObject:@"mapCombination"];
}

-(void)setDefaults:(NSString *)defaults {
	_defaults = defaults;
	[self updateNSObject:@"defaults"];
}

-(void)setMapbubbleCombination:(NSString *)mapbubbleCombination {
	_mapbubbleCombination = mapbubbleCombination;
	[self updateNSObject:@"mapbubbleCombination"];
}

-(void)setDefaultCombination:(NSString *)defaultCombination {
	_defaultCombination = defaultCombination;
	[self updateNSObject:@"defaultCombination"];
}

-(void)setColumn:(NSString *)column {
	_column = column;
	[self updateNSObject:@"column"];
}

-(void)setBubbleCombination:(NSString *)bubbleCombination {
	_bubbleCombination = bubbleCombination;
	[self updateNSObject:@"bubbleCombination"];
}

-(void)setScatter:(NSString *)scatter {
	_scatter = scatter;
	[self updateNSObject:@"scatter"];
}

@end

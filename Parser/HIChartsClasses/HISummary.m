#import "HIChartsJSONSerializableSubclass.h"
#import "HISummary.h"

@implementation HISummary

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISummary *copySummary = [[HISummary allocWithZone: zone] init];
	copySummary.pieCombination = [self.pieCombination copyWithZone: zone];
	copySummary.pie = [self.pie copyWithZone: zone];
	copySummary.lineCombination = [self.lineCombination copyWithZone: zone];
	copySummary.mapbubble = [self.mapbubble copyWithZone: zone];
	copySummary.spline = [self.spline copyWithZone: zone];
	copySummary.barCombination = [self.barCombination copyWithZone: zone];
	copySummary.boxplotCombination = [self.boxplotCombination copyWithZone: zone];
	copySummary.splineCombination = [self.splineCombination copyWithZone: zone];
	copySummary.scatterCombination = [self.scatterCombination copyWithZone: zone];
	copySummary.maplineCombination = [self.maplineCombination copyWithZone: zone];
	copySummary.bubble = [self.bubble copyWithZone: zone];
	copySummary.boxplot = [self.boxplot copyWithZone: zone];
	copySummary.columnCombination = [self.columnCombination copyWithZone: zone];
	copySummary.map = [self.map copyWithZone: zone];
	copySummary.line = [self.line copyWithZone: zone];
	copySummary.mapline = [self.mapline copyWithZone: zone];
	copySummary.bar = [self.bar copyWithZone: zone];
	copySummary.mapCombination = [self.mapCombination copyWithZone: zone];
	copySummary.defaults = [self.defaults copyWithZone: zone];
	copySummary.mapbubbleCombination = [self.mapbubbleCombination copyWithZone: zone];
	copySummary.defaultCombination = [self.defaultCombination copyWithZone: zone];
	copySummary.column = [self.column copyWithZone: zone];
	copySummary.bubbleCombination = [self.bubbleCombination copyWithZone: zone];
	copySummary.scatter = [self.scatter copyWithZone: zone];
	return copySummary;
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
	NSString *oldValue = _pieCombination;
	_pieCombination = pieCombination;
	[self updateNSObject:oldValue newValue:pieCombination propertyName:@"pieCombination"];
}

-(void)setPie:(NSString *)pie {
	NSString *oldValue = _pie;
	_pie = pie;
	[self updateNSObject:oldValue newValue:pie propertyName:@"pie"];
}

-(void)setLineCombination:(NSString *)lineCombination {
	NSString *oldValue = _lineCombination;
	_lineCombination = lineCombination;
	[self updateNSObject:oldValue newValue:lineCombination propertyName:@"lineCombination"];
}

-(void)setMapbubble:(NSString *)mapbubble {
	NSString *oldValue = _mapbubble;
	_mapbubble = mapbubble;
	[self updateNSObject:oldValue newValue:mapbubble propertyName:@"mapbubble"];
}

-(void)setSpline:(NSString *)spline {
	NSString *oldValue = _spline;
	_spline = spline;
	[self updateNSObject:oldValue newValue:spline propertyName:@"spline"];
}

-(void)setBarCombination:(NSString *)barCombination {
	NSString *oldValue = _barCombination;
	_barCombination = barCombination;
	[self updateNSObject:oldValue newValue:barCombination propertyName:@"barCombination"];
}

-(void)setBoxplotCombination:(NSString *)boxplotCombination {
	NSString *oldValue = _boxplotCombination;
	_boxplotCombination = boxplotCombination;
	[self updateNSObject:oldValue newValue:boxplotCombination propertyName:@"boxplotCombination"];
}

-(void)setSplineCombination:(NSString *)splineCombination {
	NSString *oldValue = _splineCombination;
	_splineCombination = splineCombination;
	[self updateNSObject:oldValue newValue:splineCombination propertyName:@"splineCombination"];
}

-(void)setScatterCombination:(NSString *)scatterCombination {
	NSString *oldValue = _scatterCombination;
	_scatterCombination = scatterCombination;
	[self updateNSObject:oldValue newValue:scatterCombination propertyName:@"scatterCombination"];
}

-(void)setMaplineCombination:(NSString *)maplineCombination {
	NSString *oldValue = _maplineCombination;
	_maplineCombination = maplineCombination;
	[self updateNSObject:oldValue newValue:maplineCombination propertyName:@"maplineCombination"];
}

-(void)setBubble:(NSString *)bubble {
	NSString *oldValue = _bubble;
	_bubble = bubble;
	[self updateNSObject:oldValue newValue:bubble propertyName:@"bubble"];
}

-(void)setBoxplot:(NSString *)boxplot {
	NSString *oldValue = _boxplot;
	_boxplot = boxplot;
	[self updateNSObject:oldValue newValue:boxplot propertyName:@"boxplot"];
}

-(void)setColumnCombination:(NSString *)columnCombination {
	NSString *oldValue = _columnCombination;
	_columnCombination = columnCombination;
	[self updateNSObject:oldValue newValue:columnCombination propertyName:@"columnCombination"];
}

-(void)setMap:(NSString *)map {
	NSString *oldValue = _map;
	_map = map;
	[self updateNSObject:oldValue newValue:map propertyName:@"map"];
}

-(void)setLine:(NSString *)line {
	NSString *oldValue = _line;
	_line = line;
	[self updateNSObject:oldValue newValue:line propertyName:@"line"];
}

-(void)setMapline:(NSString *)mapline {
	NSString *oldValue = _mapline;
	_mapline = mapline;
	[self updateNSObject:oldValue newValue:mapline propertyName:@"mapline"];
}

-(void)setBar:(NSString *)bar {
	NSString *oldValue = _bar;
	_bar = bar;
	[self updateNSObject:oldValue newValue:bar propertyName:@"bar"];
}

-(void)setMapCombination:(NSString *)mapCombination {
	NSString *oldValue = _mapCombination;
	_mapCombination = mapCombination;
	[self updateNSObject:oldValue newValue:mapCombination propertyName:@"mapCombination"];
}

-(void)setDefaults:(NSString *)defaults {
	NSString *oldValue = _defaults;
	_defaults = defaults;
	[self updateNSObject:oldValue newValue:defaults propertyName:@"defaults"];
}

-(void)setMapbubbleCombination:(NSString *)mapbubbleCombination {
	NSString *oldValue = _mapbubbleCombination;
	_mapbubbleCombination = mapbubbleCombination;
	[self updateNSObject:oldValue newValue:mapbubbleCombination propertyName:@"mapbubbleCombination"];
}

-(void)setDefaultCombination:(NSString *)defaultCombination {
	NSString *oldValue = _defaultCombination;
	_defaultCombination = defaultCombination;
	[self updateNSObject:oldValue newValue:defaultCombination propertyName:@"defaultCombination"];
}

-(void)setColumn:(NSString *)column {
	NSString *oldValue = _column;
	_column = column;
	[self updateNSObject:oldValue newValue:column propertyName:@"column"];
}

-(void)setBubbleCombination:(NSString *)bubbleCombination {
	NSString *oldValue = _bubbleCombination;
	_bubbleCombination = bubbleCombination;
	[self updateNSObject:oldValue newValue:bubbleCombination propertyName:@"bubbleCombination"];
}

-(void)setScatter:(NSString *)scatter {
	NSString *oldValue = _scatter;
	_scatter = scatter;
	[self updateNSObject:oldValue newValue:scatter propertyName:@"scatter"];
}

@end
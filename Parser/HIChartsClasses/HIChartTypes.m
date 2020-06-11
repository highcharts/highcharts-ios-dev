#import "HIChartsJSONSerializableSubclass.h"
#import "HIChartTypes.h"

@implementation HIChartTypes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIChartTypes *copyChartTypes = [[HIChartTypes allocWithZone: zone] init];
	copyChartTypes.scatterMultiple = [self.scatterMultiple copyWithZone: zone];
	copyChartTypes.boxplotSingle = [self.boxplotSingle copyWithZone: zone];
	copyChartTypes.defaultMultiple = [self.defaultMultiple copyWithZone: zone];
	copyChartTypes.mapTypeDescription = [self.mapTypeDescription copyWithZone: zone];
	copyChartTypes.lineMultiple = [self.lineMultiple copyWithZone: zone];
	copyChartTypes.defaultSingle = [self.defaultSingle copyWithZone: zone];
	copyChartTypes.emptyChart = [self.emptyChart copyWithZone: zone];
	copyChartTypes.pieMultiple = [self.pieMultiple copyWithZone: zone];
	copyChartTypes.columnSingle = [self.columnSingle copyWithZone: zone];
	copyChartTypes.splineMultiple = [self.splineMultiple copyWithZone: zone];
	copyChartTypes.unknownMap = [self.unknownMap copyWithZone: zone];
	copyChartTypes.combinationChart = [self.combinationChart copyWithZone: zone];
	copyChartTypes.columnMultiple = [self.columnMultiple copyWithZone: zone];
	copyChartTypes.scatterSingle = [self.scatterSingle copyWithZone: zone];
	copyChartTypes.bubbleMultiple = [self.bubbleMultiple copyWithZone: zone];
	copyChartTypes.boxplotMultiple = [self.boxplotMultiple copyWithZone: zone];
	copyChartTypes.barSingle = [self.barSingle copyWithZone: zone];
	copyChartTypes.barMultiple = [self.barMultiple copyWithZone: zone];
	copyChartTypes.lineSingle = [self.lineSingle copyWithZone: zone];
	copyChartTypes.splineSingle = [self.splineSingle copyWithZone: zone];
	copyChartTypes.bubbleSingle = [self.bubbleSingle copyWithZone: zone];
	copyChartTypes.pieSingle = [self.pieSingle copyWithZone: zone];
	return copyChartTypes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.scatterMultiple) {
		params[@"scatterMultiple"] = self.scatterMultiple;
	}
	if (self.boxplotSingle) {
		params[@"boxplotSingle"] = self.boxplotSingle;
	}
	if (self.defaultMultiple) {
		params[@"defaultMultiple"] = self.defaultMultiple;
	}
	if (self.mapTypeDescription) {
		params[@"mapTypeDescription"] = self.mapTypeDescription;
	}
	if (self.lineMultiple) {
		params[@"lineMultiple"] = self.lineMultiple;
	}
	if (self.defaultSingle) {
		params[@"defaultSingle"] = self.defaultSingle;
	}
	if (self.emptyChart) {
		params[@"emptyChart"] = self.emptyChart;
	}
	if (self.pieMultiple) {
		params[@"pieMultiple"] = self.pieMultiple;
	}
	if (self.columnSingle) {
		params[@"columnSingle"] = self.columnSingle;
	}
	if (self.splineMultiple) {
		params[@"splineMultiple"] = self.splineMultiple;
	}
	if (self.unknownMap) {
		params[@"unknownMap"] = self.unknownMap;
	}
	if (self.combinationChart) {
		params[@"combinationChart"] = self.combinationChart;
	}
	if (self.columnMultiple) {
		params[@"columnMultiple"] = self.columnMultiple;
	}
	if (self.scatterSingle) {
		params[@"scatterSingle"] = self.scatterSingle;
	}
	if (self.bubbleMultiple) {
		params[@"bubbleMultiple"] = self.bubbleMultiple;
	}
	if (self.boxplotMultiple) {
		params[@"boxplotMultiple"] = self.boxplotMultiple;
	}
	if (self.barSingle) {
		params[@"barSingle"] = self.barSingle;
	}
	if (self.barMultiple) {
		params[@"barMultiple"] = self.barMultiple;
	}
	if (self.lineSingle) {
		params[@"lineSingle"] = self.lineSingle;
	}
	if (self.splineSingle) {
		params[@"splineSingle"] = self.splineSingle;
	}
	if (self.bubbleSingle) {
		params[@"bubbleSingle"] = self.bubbleSingle;
	}
	if (self.pieSingle) {
		params[@"pieSingle"] = self.pieSingle;
	}
	return params;
}

# pragma mark - Setters

-(void)setScatterMultiple:(NSString *)scatterMultiple {
	NSString *oldValue = _scatterMultiple;
	_scatterMultiple = scatterMultiple;
	[self updateNSObject:oldValue newValue:scatterMultiple propertyName:@"scatterMultiple"];
}

-(void)setBoxplotSingle:(NSString *)boxplotSingle {
	NSString *oldValue = _boxplotSingle;
	_boxplotSingle = boxplotSingle;
	[self updateNSObject:oldValue newValue:boxplotSingle propertyName:@"boxplotSingle"];
}

-(void)setDefaultMultiple:(NSString *)defaultMultiple {
	NSString *oldValue = _defaultMultiple;
	_defaultMultiple = defaultMultiple;
	[self updateNSObject:oldValue newValue:defaultMultiple propertyName:@"defaultMultiple"];
}

-(void)setMapTypeDescription:(NSString *)mapTypeDescription {
	NSString *oldValue = _mapTypeDescription;
	_mapTypeDescription = mapTypeDescription;
	[self updateNSObject:oldValue newValue:mapTypeDescription propertyName:@"mapTypeDescription"];
}

-(void)setLineMultiple:(NSString *)lineMultiple {
	NSString *oldValue = _lineMultiple;
	_lineMultiple = lineMultiple;
	[self updateNSObject:oldValue newValue:lineMultiple propertyName:@"lineMultiple"];
}

-(void)setDefaultSingle:(NSString *)defaultSingle {
	NSString *oldValue = _defaultSingle;
	_defaultSingle = defaultSingle;
	[self updateNSObject:oldValue newValue:defaultSingle propertyName:@"defaultSingle"];
}

-(void)setEmptyChart:(NSString *)emptyChart {
	NSString *oldValue = _emptyChart;
	_emptyChart = emptyChart;
	[self updateNSObject:oldValue newValue:emptyChart propertyName:@"emptyChart"];
}

-(void)setPieMultiple:(NSString *)pieMultiple {
	NSString *oldValue = _pieMultiple;
	_pieMultiple = pieMultiple;
	[self updateNSObject:oldValue newValue:pieMultiple propertyName:@"pieMultiple"];
}

-(void)setColumnSingle:(NSString *)columnSingle {
	NSString *oldValue = _columnSingle;
	_columnSingle = columnSingle;
	[self updateNSObject:oldValue newValue:columnSingle propertyName:@"columnSingle"];
}

-(void)setSplineMultiple:(NSString *)splineMultiple {
	NSString *oldValue = _splineMultiple;
	_splineMultiple = splineMultiple;
	[self updateNSObject:oldValue newValue:splineMultiple propertyName:@"splineMultiple"];
}

-(void)setUnknownMap:(NSString *)unknownMap {
	NSString *oldValue = _unknownMap;
	_unknownMap = unknownMap;
	[self updateNSObject:oldValue newValue:unknownMap propertyName:@"unknownMap"];
}

-(void)setCombinationChart:(NSString *)combinationChart {
	NSString *oldValue = _combinationChart;
	_combinationChart = combinationChart;
	[self updateNSObject:oldValue newValue:combinationChart propertyName:@"combinationChart"];
}

-(void)setColumnMultiple:(NSString *)columnMultiple {
	NSString *oldValue = _columnMultiple;
	_columnMultiple = columnMultiple;
	[self updateNSObject:oldValue newValue:columnMultiple propertyName:@"columnMultiple"];
}

-(void)setScatterSingle:(NSString *)scatterSingle {
	NSString *oldValue = _scatterSingle;
	_scatterSingle = scatterSingle;
	[self updateNSObject:oldValue newValue:scatterSingle propertyName:@"scatterSingle"];
}

-(void)setBubbleMultiple:(NSString *)bubbleMultiple {
	NSString *oldValue = _bubbleMultiple;
	_bubbleMultiple = bubbleMultiple;
	[self updateNSObject:oldValue newValue:bubbleMultiple propertyName:@"bubbleMultiple"];
}

-(void)setBoxplotMultiple:(NSString *)boxplotMultiple {
	NSString *oldValue = _boxplotMultiple;
	_boxplotMultiple = boxplotMultiple;
	[self updateNSObject:oldValue newValue:boxplotMultiple propertyName:@"boxplotMultiple"];
}

-(void)setBarSingle:(NSString *)barSingle {
	NSString *oldValue = _barSingle;
	_barSingle = barSingle;
	[self updateNSObject:oldValue newValue:barSingle propertyName:@"barSingle"];
}

-(void)setBarMultiple:(NSString *)barMultiple {
	NSString *oldValue = _barMultiple;
	_barMultiple = barMultiple;
	[self updateNSObject:oldValue newValue:barMultiple propertyName:@"barMultiple"];
}

-(void)setLineSingle:(NSString *)lineSingle {
	NSString *oldValue = _lineSingle;
	_lineSingle = lineSingle;
	[self updateNSObject:oldValue newValue:lineSingle propertyName:@"lineSingle"];
}

-(void)setSplineSingle:(NSString *)splineSingle {
	NSString *oldValue = _splineSingle;
	_splineSingle = splineSingle;
	[self updateNSObject:oldValue newValue:splineSingle propertyName:@"splineSingle"];
}

-(void)setBubbleSingle:(NSString *)bubbleSingle {
	NSString *oldValue = _bubbleSingle;
	_bubbleSingle = bubbleSingle;
	[self updateNSObject:oldValue newValue:bubbleSingle propertyName:@"bubbleSingle"];
}

-(void)setPieSingle:(NSString *)pieSingle {
	NSString *oldValue = _pieSingle;
	_pieSingle = pieSingle;
	[self updateNSObject:oldValue newValue:pieSingle propertyName:@"pieSingle"];
}

@end
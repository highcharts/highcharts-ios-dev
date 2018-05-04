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
	copyChartTypes.defaultMultiple = [self.defaultMultiple copyWithZone: zone];
	copyChartTypes.mapTypeDescription = [self.mapTypeDescription copyWithZone: zone];
	copyChartTypes.lineMultiple = [self.lineMultiple copyWithZone: zone];
	copyChartTypes.defaultSingle = [self.defaultSingle copyWithZone: zone];
	copyChartTypes.emptyChart = [self.emptyChart copyWithZone: zone];
	copyChartTypes.pieMultiple = [self.pieMultiple copyWithZone: zone];
	copyChartTypes.columnSingle = [self.columnSingle copyWithZone: zone];
	copyChartTypes.pieSingle = [self.pieSingle copyWithZone: zone];
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
	copyChartTypes.boxplotSingle = [self.boxplotSingle copyWithZone: zone];
	return copyChartTypes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.scatterMultiple) {
		params[@"scatterMultiple"] = self.scatterMultiple;
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
	if (self.pieSingle) {
		params[@"pieSingle"] = self.pieSingle;
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
	if (self.boxplotSingle) {
		params[@"boxplotSingle"] = self.boxplotSingle;
	}
	return params;
}

# pragma mark - Setters

-(void)setScatterMultiple:(NSString *)scatterMultiple {
	_scatterMultiple = scatterMultiple;
	[self updateNSObject:@"scatterMultiple"];
}

-(void)setDefaultMultiple:(NSString *)defaultMultiple {
	_defaultMultiple = defaultMultiple;
	[self updateNSObject:@"defaultMultiple"];
}

-(void)setMapTypeDescription:(NSString *)mapTypeDescription {
	_mapTypeDescription = mapTypeDescription;
	[self updateNSObject:@"mapTypeDescription"];
}

-(void)setLineMultiple:(NSString *)lineMultiple {
	_lineMultiple = lineMultiple;
	[self updateNSObject:@"lineMultiple"];
}

-(void)setDefaultSingle:(NSString *)defaultSingle {
	_defaultSingle = defaultSingle;
	[self updateNSObject:@"defaultSingle"];
}

-(void)setEmptyChart:(NSString *)emptyChart {
	_emptyChart = emptyChart;
	[self updateNSObject:@"emptyChart"];
}

-(void)setPieMultiple:(NSString *)pieMultiple {
	_pieMultiple = pieMultiple;
	[self updateNSObject:@"pieMultiple"];
}

-(void)setColumnSingle:(NSString *)columnSingle {
	_columnSingle = columnSingle;
	[self updateNSObject:@"columnSingle"];
}

-(void)setPieSingle:(NSString *)pieSingle {
	_pieSingle = pieSingle;
	[self updateNSObject:@"pieSingle"];
}

-(void)setSplineMultiple:(NSString *)splineMultiple {
	_splineMultiple = splineMultiple;
	[self updateNSObject:@"splineMultiple"];
}

-(void)setUnknownMap:(NSString *)unknownMap {
	_unknownMap = unknownMap;
	[self updateNSObject:@"unknownMap"];
}

-(void)setCombinationChart:(NSString *)combinationChart {
	_combinationChart = combinationChart;
	[self updateNSObject:@"combinationChart"];
}

-(void)setColumnMultiple:(NSString *)columnMultiple {
	_columnMultiple = columnMultiple;
	[self updateNSObject:@"columnMultiple"];
}

-(void)setScatterSingle:(NSString *)scatterSingle {
	_scatterSingle = scatterSingle;
	[self updateNSObject:@"scatterSingle"];
}

-(void)setBubbleMultiple:(NSString *)bubbleMultiple {
	_bubbleMultiple = bubbleMultiple;
	[self updateNSObject:@"bubbleMultiple"];
}

-(void)setBoxplotMultiple:(NSString *)boxplotMultiple {
	_boxplotMultiple = boxplotMultiple;
	[self updateNSObject:@"boxplotMultiple"];
}

-(void)setBarSingle:(NSString *)barSingle {
	_barSingle = barSingle;
	[self updateNSObject:@"barSingle"];
}

-(void)setBarMultiple:(NSString *)barMultiple {
	_barMultiple = barMultiple;
	[self updateNSObject:@"barMultiple"];
}

-(void)setLineSingle:(NSString *)lineSingle {
	_lineSingle = lineSingle;
	[self updateNSObject:@"lineSingle"];
}

-(void)setSplineSingle:(NSString *)splineSingle {
	_splineSingle = splineSingle;
	[self updateNSObject:@"splineSingle"];
}

-(void)setBubbleSingle:(NSString *)bubbleSingle {
	_bubbleSingle = bubbleSingle;
	[self updateNSObject:@"bubbleSingle"];
}

-(void)setBoxplotSingle:(NSString *)boxplotSingle {
	_boxplotSingle = boxplotSingle;
	[self updateNSObject:@"boxplotSingle"];
}

@end
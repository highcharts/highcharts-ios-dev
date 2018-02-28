#import "HIChartsJSONSerializableSubclass.h"
#import "HIChartTypes.h"

@implementation HIChartTypes

-(instancetype)init {
	return [super init];
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
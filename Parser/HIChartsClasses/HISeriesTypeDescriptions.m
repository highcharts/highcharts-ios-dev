#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesTypeDescriptions.h"

@implementation HISeriesTypeDescriptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesTypeDescriptions *copySeriesTypeDescriptions = [[HISeriesTypeDescriptions allocWithZone: zone] init];
	copySeriesTypeDescriptions.funnel = [self.funnel copyWithZone: zone];
	copySeriesTypeDescriptions.pyramid = [self.pyramid copyWithZone: zone];
	copySeriesTypeDescriptions.columnrange = [self.columnrange copyWithZone: zone];
	copySeriesTypeDescriptions.errorbar = [self.errorbar copyWithZone: zone];
	copySeriesTypeDescriptions.areasplinerange = [self.areasplinerange copyWithZone: zone];
	copySeriesTypeDescriptions.waterfall = [self.waterfall copyWithZone: zone];
	copySeriesTypeDescriptions.arearange = [self.arearange copyWithZone: zone];
	copySeriesTypeDescriptions.bubble = [self.bubble copyWithZone: zone];
	copySeriesTypeDescriptions.boxplot = [self.boxplot copyWithZone: zone];
	return copySeriesTypeDescriptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.funnel) {
		params[@"funnel"] = self.funnel;
	}
	if (self.pyramid) {
		params[@"pyramid"] = self.pyramid;
	}
	if (self.columnrange) {
		params[@"columnrange"] = self.columnrange;
	}
	if (self.errorbar) {
		params[@"errorbar"] = self.errorbar;
	}
	if (self.areasplinerange) {
		params[@"areasplinerange"] = self.areasplinerange;
	}
	if (self.waterfall) {
		params[@"waterfall"] = self.waterfall;
	}
	if (self.arearange) {
		params[@"arearange"] = self.arearange;
	}
	if (self.bubble) {
		params[@"bubble"] = self.bubble;
	}
	if (self.boxplot) {
		params[@"boxplot"] = self.boxplot;
	}
	return params;
}

# pragma mark - Setters

-(void)setFunnel:(NSString *)funnel {
	NSString *oldValue = _funnel;
	_funnel = funnel;
	[self updateNSObject:oldValue newValue:funnel propertyName:@"funnel"];
}

-(void)setPyramid:(NSString *)pyramid {
	NSString *oldValue = _pyramid;
	_pyramid = pyramid;
	[self updateNSObject:oldValue newValue:pyramid propertyName:@"pyramid"];
}

-(void)setColumnrange:(NSString *)columnrange {
	NSString *oldValue = _columnrange;
	_columnrange = columnrange;
	[self updateNSObject:oldValue newValue:columnrange propertyName:@"columnrange"];
}

-(void)setErrorbar:(NSString *)errorbar {
	NSString *oldValue = _errorbar;
	_errorbar = errorbar;
	[self updateNSObject:oldValue newValue:errorbar propertyName:@"errorbar"];
}

-(void)setAreasplinerange:(NSString *)areasplinerange {
	NSString *oldValue = _areasplinerange;
	_areasplinerange = areasplinerange;
	[self updateNSObject:oldValue newValue:areasplinerange propertyName:@"areasplinerange"];
}

-(void)setWaterfall:(NSString *)waterfall {
	NSString *oldValue = _waterfall;
	_waterfall = waterfall;
	[self updateNSObject:oldValue newValue:waterfall propertyName:@"waterfall"];
}

-(void)setArearange:(NSString *)arearange {
	NSString *oldValue = _arearange;
	_arearange = arearange;
	[self updateNSObject:oldValue newValue:arearange propertyName:@"arearange"];
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

@end
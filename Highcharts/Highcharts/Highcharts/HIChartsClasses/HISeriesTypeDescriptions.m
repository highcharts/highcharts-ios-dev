#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesTypeDescriptions.h"

@implementation HISeriesTypeDescriptions

-(instancetype)init {
	return [super init];
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
	_funnel = funnel;
	[self updateNSObject:@"funnel"];
}

-(void)setPyramid:(NSString *)pyramid {
	_pyramid = pyramid;
	[self updateNSObject:@"pyramid"];
}

-(void)setColumnrange:(NSString *)columnrange {
	_columnrange = columnrange;
	[self updateNSObject:@"columnrange"];
}

-(void)setErrorbar:(NSString *)errorbar {
	_errorbar = errorbar;
	[self updateNSObject:@"errorbar"];
}

-(void)setAreasplinerange:(NSString *)areasplinerange {
	_areasplinerange = areasplinerange;
	[self updateNSObject:@"areasplinerange"];
}

-(void)setWaterfall:(NSString *)waterfall {
	_waterfall = waterfall;
	[self updateNSObject:@"waterfall"];
}

-(void)setArearange:(NSString *)arearange {
	_arearange = arearange;
	[self updateNSObject:@"arearange"];
}

-(void)setBubble:(NSString *)bubble {
	_bubble = bubble;
	[self updateNSObject:@"bubble"];
}

-(void)setBoxplot:(NSString *)boxplot {
	_boxplot = boxplot;
	[self updateNSObject:@"boxplot"];
}

@end
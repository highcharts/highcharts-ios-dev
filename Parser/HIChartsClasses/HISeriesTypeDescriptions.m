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
	}
	if (self.pyramid) {
	}
	if (self.columnrange) {
	}
	if (self.errorbar) {
	}
	if (self.areasplinerange) {
	}
	if (self.waterfall) {
	}
	if (self.arearange) {
	}
	if (self.bubble) {
	}
	if (self.boxplot) {
	}
	return params;
}

# pragma mark - Setters

-(void)setFunnel:(id)funnel {
	_funnel = funnel;
	[self updateNSObject:@"funnel"];
}

-(void)setPyramid:(id)pyramid {
	_pyramid = pyramid;
	[self updateNSObject:@"pyramid"];
}

-(void)setColumnrange:(id)columnrange {
	_columnrange = columnrange;
	[self updateNSObject:@"columnrange"];
}

-(void)setErrorbar:(id)errorbar {
	_errorbar = errorbar;
	[self updateNSObject:@"errorbar"];
}

-(void)setAreasplinerange:(id)areasplinerange {
	_areasplinerange = areasplinerange;
	[self updateNSObject:@"areasplinerange"];
}

-(void)setWaterfall:(id)waterfall {
	_waterfall = waterfall;
	[self updateNSObject:@"waterfall"];
}

-(void)setArearange:(id)arearange {
	_arearange = arearange;
	[self updateNSObject:@"arearange"];
}

-(void)setBubble:(id)bubble {
	_bubble = bubble;
	[self updateNSObject:@"bubble"];
}

-(void)setBoxplot:(id)boxplot {
	_boxplot = boxplot;
	[self updateNSObject:@"boxplot"];
}

@end
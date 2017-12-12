#import "HIOptions.h"

@implementation HIOptions

-(instancetype)init {
	if (self = [super init]) {
		HICredits *credits = [[HICredits alloc]init];
		credits.enabled = @true;
		credits.text = @"Highcharts iOS";
		credits.href = @"http://www.highcharts.com/blog/mobile/";
		self.credits = credits;
        return self;
	}
	return nil;
}

-(NSDictionary *)getParams {
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.credits) {
		params[@"credits"] = [self.credits getParams];
	}
	if (self.series) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.series) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"series"] = array;
	}
	if (self.boost) {
		params[@"boost"] = [self.boost getParams];
	}
	if (self.data) {
		params[@"data"] = [self.data getParams];
	}
	if (self.defs) {
		params[@"defs"] = [self.defs getParams];
	}
	if (self.yAxis) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.yAxis) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"yAxis"] = array;
	}
	if (self.legend) {
		params[@"legend"] = [self.legend getParams];
	}
	if (self.pane) {
		params[@"pane"] = [self.pane getParams];
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.noData) {
		params[@"noData"] = [self.noData getParams];
	}
	if (self.plotOptions) {
		params[@"plotOptions"] = [self.plotOptions getParams];
	}
	if (self.subtitle) {
		params[@"subtitle"] = [self.subtitle getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.responsive) {
		params[@"responsive"] = [self.responsive getParams];
	}
	if (self.xAxis) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.xAxis) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"xAxis"] = array;
	}
	if (self.chart) {
		params[@"chart"] = [self.chart getParams];
	}
	if (self.annotations) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.annotations) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"annotations"] = array;
	}
	if (self.zAxis) {
		params[@"zAxis"] = [self.zAxis getParams];
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.loading) {
		params[@"loading"] = [self.loading getParams];
	}
	if (self.colorAxis) {
		params[@"colorAxis"] = [self.colorAxis getParams];
	}
	if (self.drilldown) {
		params[@"drilldown"] = [self.drilldown getParams];
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
	}
	if (self.additionalOptions) {
		[params addEntriesFromDictionary: self.additionalOptions];
	}

	return params;
}

#pragma mark - Setters

/*
-(void)setAccessibility:(HIAccessibility *)accessibility {
    
}

-(void)setAnnotations:(NSArray<HIAnnotations *> *)annotations {
    
}

-(void)setBoost:(HIBoost *)boost {
    
}*/

-(void)setChart:(HIChart *)chart {
    HIChart *oldValue = _chart;
    
    if(self.chart) {
        [self removeObserver:self forKeyPath:@"chart.isUpdated"];
    }
    
    _chart = chart;
    
    [self updateHIObject:oldValue newValue:chart propertyName:@"chart"];
}

/*
-(void)setColorAxis:(HIColorAxis *)colorAxis {
    
}

-(void)setColors:(NSArray<HIColor *> *)colors {
    
}

-(void)setCredits:(HICredits *)credits {
    
}

-(void)setData:(HIData *)data {
    
}

-(void)setDefs:(HIDefs *)defs {
    
}

-(void)setDrilldown:(HIDrilldown *)drilldown {
    
}

-(void)setExporting:(HIExporting *)exporting {
    
}

-(void)setLabels:(HILabels *)labels {
    
}

-(void)setLoading:(HILoading *)loading {
    
}

-(void)setNavigation:(HINavigation *)navigation {
    
}

-(void)setNoData:(HINoData *)noData {
    
}

-(void)setPane:(HIPane *)pane {
    
}

-(void)setPlotOptions:(HIPlotOptions *)plotOptions {
    
}

-(void)setResponsive:(HIResponsive *)responsive {
    
}


-(void)setSeries:(NSArray<HISeries *> *)series {
    
}
*/

-(void)setSubtitle:(HISubtitle *)subtitle {
    HISubtitle *oldValue = _subtitle;
    
    if(self.subtitle) {
        [self removeObserver:self forKeyPath:@"subtitle.isUpdated"];
    }
    
    _subtitle = subtitle;
    
    [self updateHIObject:oldValue newValue:subtitle propertyName:@"subtitle"];
}

-(void)setTitle:(HITitle *)title {
    HITitle *oldValue = _title;
    
    if(self.title) {
        [self removeObserver:self forKeyPath:@"title.isUpdated"];
    }
    
    _title = title;
    
    [self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

/*
-(void)setTooltip:(HITooltip *)tooltip {
    
}
*/

-(void)setXAxis:(NSArray<HIXAxis *> *)xAxis {
    NSArray<HIXAxis *> *oldValue = _xAxis;
    
    _xAxis = xAxis;
    
    [self updateArrayObject:oldValue newValue:xAxis propertyName:@"xAxis"];
}

-(void)setYAxis:(NSArray<HIYAxis *> *)yAxis {
    NSArray<HIYAxis *> *oldValue = _yAxis;
    
    _yAxis = yAxis;
    
    [self updateArrayObject:oldValue newValue:yAxis propertyName:@"yAxis"];
}

/*
-(void)setZAxis:(HIZAxis *)zAxis {
    
}
 */

@end

#import "HIChartsJSONSerializableSubclass.h"
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
	if (self.subtitle) {
		params[@"subtitle"] = [self.subtitle getParams];
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
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.colors) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"colors"] = array;
	}
	if (self.pane) {
		params[@"pane"] = [self.pane getParams];
	}
	if (self.responsive) {
		params[@"responsive"] = [self.responsive getParams];
	}
	if (self.noData) {
		params[@"noData"] = [self.noData getParams];
	}
	if (self.loading) {
		params[@"loading"] = [self.loading getParams];
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.plotOptions) {
		params[@"plotOptions"] = [self.plotOptions getParams];
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
	}
	if (self.boost) {
		params[@"boost"] = [self.boost getParams];
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
	if (self.defs) {
		params[@"defs"] = self.defs;
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.chart) {
		params[@"chart"] = [self.chart getParams];
	}
	if (self.credits) {
		params[@"credits"] = [self.credits getParams];
	}
	if (self.zAxis) {
		params[@"zAxis"] = [self.zAxis getParams];
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
	if (self.drilldown) {
		params[@"drilldown"] = [self.drilldown getParams];
	}
	if (self.data) {
		params[@"data"] = [self.data getParams];
	}
	if (self.legend) {
		params[@"legend"] = [self.legend getParams];
	}
	if (self.colorAxis) {
		params[@"colorAxis"] = [self.colorAxis getParams];
	}
	if (self.time) {
		params[@"time"] = [self.time getParams];
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.additionalOptions) {
		[params addEntriesFromDictionary: self.additionalOptions];
	}

	return params;
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIOptions *copyOptions = [[HIOptions allocWithZone: zone] init];
	copyOptions.subtitle = [self.subtitle copyWithZone: zone];
	copyOptions.yAxis = [self.yAxis copyWithZone: zone];
	copyOptions.series = [self.series copyWithZone: zone];
	copyOptions.accessibility = [self.accessibility copyWithZone: zone];
	copyOptions.colors = [self.colors copyWithZone: zone];
	copyOptions.pane = [self.pane copyWithZone: zone];
	copyOptions.responsive = [self.responsive copyWithZone: zone];
	copyOptions.noData = [self.noData copyWithZone: zone];
	copyOptions.loading = [self.loading copyWithZone: zone];
	copyOptions.title = [self.title copyWithZone: zone];
	copyOptions.tooltip = [self.tooltip copyWithZone: zone];
	copyOptions.plotOptions = [self.plotOptions copyWithZone: zone];
	copyOptions.exporting = [self.exporting copyWithZone: zone];
	copyOptions.boost = [self.boost copyWithZone: zone];
	copyOptions.annotations = [self.annotations copyWithZone: zone];
	copyOptions.defs = [self.defs copyWithZone: zone];
	copyOptions.labels = [self.labels copyWithZone: zone];
	copyOptions.chart = [self.chart copyWithZone: zone];
	copyOptions.credits = [self.credits copyWithZone: zone];
	copyOptions.zAxis = [self.zAxis copyWithZone: zone];
	copyOptions.xAxis = [self.xAxis copyWithZone: zone];
	copyOptions.drilldown = [self.drilldown copyWithZone: zone];
	copyOptions.data = [self.data copyWithZone: zone];
	copyOptions.legend = [self.legend copyWithZone: zone];
	copyOptions.colorAxis = [self.colorAxis copyWithZone: zone];
	copyOptions.time = [self.time copyWithZone: zone];
	copyOptions.navigation = [self.navigation copyWithZone: zone];
	return copyOptions;
}

# pragma mark - Setters

-(void)setSubtitle:(HISubtitle *)subtitle {
	HISubtitle *oldValue = _subtitle;
	_subtitle = subtitle;
	[self updateHIObject:oldValue newValue:subtitle propertyName:@"subtitle"];
}

-(void)setYAxis:(NSArray<HIYAxis *> *)yAxis {
	NSArray<HIYAxis *> *oldValue = _yAxis;
	_yAxis = yAxis;
	[self updateArrayObject:oldValue newValue:yAxis propertyName:@"yAxis"];
}

-(void)setSeries:(NSArray<HISeries *> *)series {
	NSArray<HISeries *> *oldValue = _series;
	_series = series;
	[self updateArrayObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setPane:(HIPane *)pane {
	HIPane *oldValue = _pane;
	_pane = pane;
	[self updateHIObject:oldValue newValue:pane propertyName:@"pane"];
}

-(void)setResponsive:(HIResponsive *)responsive {
	HIResponsive *oldValue = _responsive;
	_responsive = responsive;
	[self updateHIObject:oldValue newValue:responsive propertyName:@"responsive"];
}

-(void)setNoData:(HINoData *)noData {
	HINoData *oldValue = _noData;
	_noData = noData;
	[self updateHIObject:oldValue newValue:noData propertyName:@"noData"];
}

-(void)setLoading:(HILoading *)loading {
	HILoading *oldValue = _loading;
	_loading = loading;
	[self updateHIObject:oldValue newValue:loading propertyName:@"loading"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setTooltip:(HITooltip *)tooltip {
	HITooltip *oldValue = _tooltip;
	_tooltip = tooltip;
	[self updateHIObject:oldValue newValue:tooltip propertyName:@"tooltip"];
}

-(void)setPlotOptions:(HIPlotOptions *)plotOptions {
	HIPlotOptions *oldValue = _plotOptions;
	_plotOptions = plotOptions;
	[self updateHIObject:oldValue newValue:plotOptions propertyName:@"plotOptions"];
}

-(void)setExporting:(HIExporting *)exporting {
	HIExporting *oldValue = _exporting;
	_exporting = exporting;
	[self updateHIObject:oldValue newValue:exporting propertyName:@"exporting"];
}

-(void)setBoost:(HIBoost *)boost {
	HIBoost *oldValue = _boost;
	_boost = boost;
	[self updateHIObject:oldValue newValue:boost propertyName:@"boost"];
}

-(void)setAnnotations:(NSArray<HIAnnotations *> *)annotations {
	NSArray<HIAnnotations *> *oldValue = _annotations;
	_annotations = annotations;
	[self updateArrayObject:oldValue newValue:annotations propertyName:@"annotations"];
}

-(void)setDefs:(id )defs {
	id  oldValue = _defs;
	_defs = defs;
	[self updateNSObject:oldValue newValue:defs propertyName:@"defs"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setChart:(HIChart *)chart {
	HIChart *oldValue = _chart;
	_chart = chart;
	[self updateHIObject:oldValue newValue:chart propertyName:@"chart"];
}

-(void)setCredits:(HICredits *)credits {
	HICredits *oldValue = _credits;
	_credits = credits;
	[self updateHIObject:oldValue newValue:credits propertyName:@"credits"];
}

-(void)setZAxis:(HIZAxis *)zAxis {
	HIZAxis *oldValue = _zAxis;
	_zAxis = zAxis;
	[self updateHIObject:oldValue newValue:zAxis propertyName:@"zAxis"];
}

-(void)setXAxis:(NSArray<HIXAxis *> *)xAxis {
	NSArray<HIXAxis *> *oldValue = _xAxis;
	_xAxis = xAxis;
	[self updateArrayObject:oldValue newValue:xAxis propertyName:@"xAxis"];
}

-(void)setDrilldown:(HIDrilldown *)drilldown {
	HIDrilldown *oldValue = _drilldown;
	_drilldown = drilldown;
	[self updateHIObject:oldValue newValue:drilldown propertyName:@"drilldown"];
}

-(void)setData:(HIData *)data {
	HIData *oldValue = _data;
	_data = data;
	[self updateHIObject:oldValue newValue:data propertyName:@"data"];
}

-(void)setLegend:(HILegend *)legend {
	HILegend *oldValue = _legend;
	_legend = legend;
	[self updateHIObject:oldValue newValue:legend propertyName:@"legend"];
}

-(void)setColorAxis:(HIColorAxis *)colorAxis {
	HIColorAxis *oldValue = _colorAxis;
	_colorAxis = colorAxis;
	[self updateHIObject:oldValue newValue:colorAxis propertyName:@"colorAxis"];
}

-(void)setTime:(HITime *)time {
	HITime *oldValue = _time;
	_time = time;
	[self updateHIObject:oldValue newValue:time propertyName:@"time"];
}

-(void)setNavigation:(HINavigation *)navigation {
	HINavigation *oldValue = _navigation;
	_navigation = navigation;
	[self updateHIObject:oldValue newValue:navigation propertyName:@"navigation"];
}

-(void)setAdditionalOptions:(NSDictionary *)additionalOptions {
    NSDictionary *oldValue = _additionalOptions;
	_additionalOptions = additionalOptions;
	[self updateNSObject:oldValue newValue:additionalOptions propertyName:@"additionalOptions"];
}

@end

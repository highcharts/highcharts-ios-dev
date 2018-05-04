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
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
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
	if(self.subtitle) {
		[self removeObserver:self forKeyPath:@"subtitle.isUpdated"];
	}
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
	if(self.accessibility) {
		[self removeObserver:self forKeyPath:@"accessibility.isUpdated"];
	}
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setPane:(HIPane *)pane {
	HIPane *oldValue = _pane;
	if(self.pane) {
		[self removeObserver:self forKeyPath:@"pane.isUpdated"];
	}
	_pane = pane;
	[self updateHIObject:oldValue newValue:pane propertyName:@"pane"];
}

-(void)setResponsive:(HIResponsive *)responsive {
	HIResponsive *oldValue = _responsive;
	if(self.responsive) {
		[self removeObserver:self forKeyPath:@"responsive.isUpdated"];
	}
	_responsive = responsive;
	[self updateHIObject:oldValue newValue:responsive propertyName:@"responsive"];
}

-(void)setNoData:(HINoData *)noData {
	HINoData *oldValue = _noData;
	if(self.noData) {
		[self removeObserver:self forKeyPath:@"noData.isUpdated"];
	}
	_noData = noData;
	[self updateHIObject:oldValue newValue:noData propertyName:@"noData"];
}

-(void)setLoading:(HILoading *)loading {
	HILoading *oldValue = _loading;
	if(self.loading) {
		[self removeObserver:self forKeyPath:@"loading.isUpdated"];
	}
	_loading = loading;
	[self updateHIObject:oldValue newValue:loading propertyName:@"loading"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	if(self.title) {
		[self removeObserver:self forKeyPath:@"title.isUpdated"];
	}
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setTooltip:(HITooltip *)tooltip {
	HITooltip *oldValue = _tooltip;
	if(self.tooltip) {
		[self removeObserver:self forKeyPath:@"tooltip.isUpdated"];
	}
	_tooltip = tooltip;
	[self updateHIObject:oldValue newValue:tooltip propertyName:@"tooltip"];
}

-(void)setPlotOptions:(HIPlotOptions *)plotOptions {
	HIPlotOptions *oldValue = _plotOptions;
	if(self.plotOptions) {
		[self removeObserver:self forKeyPath:@"plotOptions.isUpdated"];
	}
	_plotOptions = plotOptions;
	[self updateHIObject:oldValue newValue:plotOptions propertyName:@"plotOptions"];
}

-(void)setExporting:(HIExporting *)exporting {
	HIExporting *oldValue = _exporting;
	if(self.exporting) {
		[self removeObserver:self forKeyPath:@"exporting.isUpdated"];
	}
	_exporting = exporting;
	[self updateHIObject:oldValue newValue:exporting propertyName:@"exporting"];
}

-(void)setBoost:(HIBoost *)boost {
	HIBoost *oldValue = _boost;
	if(self.boost) {
		[self removeObserver:self forKeyPath:@"boost.isUpdated"];
	}
	_boost = boost;
	[self updateHIObject:oldValue newValue:boost propertyName:@"boost"];
}

-(void)setAnnotations:(NSArray<HIAnnotations *> *)annotations {
	NSArray<HIAnnotations *> *oldValue = _annotations;
	_annotations = annotations;
	[self updateArrayObject:oldValue newValue:annotations propertyName:@"annotations"];
}

-(void)setDefs:(id )defs {
	_defs = defs;
	[self updateNSObject:@"defs"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	if(self.labels) {
		[self removeObserver:self forKeyPath:@"labels.isUpdated"];
	}
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setChart:(HIChart *)chart {
	HIChart *oldValue = _chart;
	if(self.chart) {
		[self removeObserver:self forKeyPath:@"chart.isUpdated"];
	}
	_chart = chart;
	[self updateHIObject:oldValue newValue:chart propertyName:@"chart"];
}

-(void)setCredits:(HICredits *)credits {
	HICredits *oldValue = _credits;
	if(self.credits) {
		[self removeObserver:self forKeyPath:@"credits.isUpdated"];
	}
	_credits = credits;
	[self updateHIObject:oldValue newValue:credits propertyName:@"credits"];
}

-(void)setZAxis:(HIZAxis *)zAxis {
	HIZAxis *oldValue = _zAxis;
	if(self.zAxis) {
		[self removeObserver:self forKeyPath:@"zAxis.isUpdated"];
	}
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
	if(self.drilldown) {
		[self removeObserver:self forKeyPath:@"drilldown.isUpdated"];
	}
	_drilldown = drilldown;
	[self updateHIObject:oldValue newValue:drilldown propertyName:@"drilldown"];
}

-(void)setData:(HIData *)data {
	HIData *oldValue = _data;
	if(self.data) {
		[self removeObserver:self forKeyPath:@"data.isUpdated"];
	}
	_data = data;
	[self updateHIObject:oldValue newValue:data propertyName:@"data"];
}

-(void)setLegend:(HILegend *)legend {
	HILegend *oldValue = _legend;
	if(self.legend) {
		[self removeObserver:self forKeyPath:@"legend.isUpdated"];
	}
	_legend = legend;
	[self updateHIObject:oldValue newValue:legend propertyName:@"legend"];
}

-(void)setColorAxis:(HIColorAxis *)colorAxis {
	HIColorAxis *oldValue = _colorAxis;
	if(self.colorAxis) {
		[self removeObserver:self forKeyPath:@"colorAxis.isUpdated"];
	}
	_colorAxis = colorAxis;
	[self updateHIObject:oldValue newValue:colorAxis propertyName:@"colorAxis"];
}

-(void)setTime:(HITime *)time {
	HITime *oldValue = _time;
	if(self.time) {
		[self removeObserver:self forKeyPath:@"time.isUpdated"];
	}
	_time = time;
	[self updateHIObject:oldValue newValue:time propertyName:@"time"];
}

-(void)setNavigation:(HINavigation *)navigation {
	HINavigation *oldValue = _navigation;
	if(self.navigation) {
		[self removeObserver:self forKeyPath:@"navigation.isUpdated"];
	}
	_navigation = navigation;
	[self updateHIObject:oldValue newValue:navigation propertyName:@"navigation"];
}

-(void)setAdditionalOptions:(NSDictionary *)additionalOptions {
	_additionalOptions = additionalOptions;
	[self updateNSObject:@"additionalOptions"];
}

@end

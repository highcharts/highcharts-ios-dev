#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.screenReaderSectionFormatter) {
		params[@"screenReaderSectionFormatter"] = [self.screenReaderSectionFormatter getFunction];
	}
	if (self.describeSingleSeries) {
		params[@"describeSingleSeries"] = self.describeSingleSeries;
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.pointDescriptionThreshold) {
		params[@"pointDescriptionThreshold"] = self.pointDescriptionThreshold;
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.pointDateFormat) {
		params[@"pointDateFormat"] = self.pointDateFormat;
	}
	if (self.seriesDescriptionFormatter) {
		params[@"seriesDescriptionFormatter"] = [self.seriesDescriptionFormatter getFunction];
	}
	if (self.onTableAnchorClick) {
		params[@"onTableAnchorClick"] = [self.onTableAnchorClick getFunction];
	}
	if (self.pointDateFormatter) {
		params[@"pointDateFormatter"] = [self.pointDateFormatter getFunction];
	}
	if (self.defaultChartTitle) {
		params[@"defaultChartTitle"] = self.defaultChartTitle;
	}
	if (self.screenReaderRegionLabel) {
		params[@"screenReaderRegionLabel"] = self.screenReaderRegionLabel;
	}
	if (self.mapZoomIn) {
		params[@"mapZoomIn"] = self.mapZoomIn;
	}
	if (self.axis) {
		params[@"axis"] = [self.axis getParams];
	}
	if (self.rangeSelectorMinInput) {
		params[@"rangeSelectorMinInput"] = self.rangeSelectorMinInput;
	}
	if (self.chartTypes) {
		params[@"chartTypes"] = [self.chartTypes getParams];
	}
	if (self.rangeSelectorButton) {
		params[@"rangeSelectorButton"] = self.rangeSelectorButton;
	}
	if (self.longDescriptionHeading) {
		params[@"longDescriptionHeading"] = self.longDescriptionHeading;
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
	}
	if (self.chartHeading) {
		params[@"chartHeading"] = self.chartHeading;
	}
	if (self.rangeSelectorMaxInput) {
		params[@"rangeSelectorMaxInput"] = self.rangeSelectorMaxInput;
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	if (self.seriesTypeDescriptions) {
		params[@"seriesTypeDescriptions"] = [self.seriesTypeDescriptions getParams];
	}
	if (self.legendItem) {
		params[@"legendItem"] = self.legendItem;
	}
	if (self.chartContainerLabel) {
		params[@"chartContainerLabel"] = self.chartContainerLabel;
	}
	if (self.structureHeading) {
		params[@"structureHeading"] = self.structureHeading;
	}
	if (self.tableSummary) {
		params[@"tableSummary"] = self.tableSummary;
	}
	if (self.navigationHint) {
		params[@"navigationHint"] = self.navigationHint;
	}
	if (self.noDescription) {
		params[@"noDescription"] = self.noDescription;
	}
	if (self.viewAsDataTable) {
		params[@"viewAsDataTable"] = self.viewAsDataTable;
	}
	if (self.mapZoomOut) {
		params[@"mapZoomOut"] = self.mapZoomOut;
	}
	return params;
}

# pragma mark - Setters

-(void)setScreenReaderSectionFormatter:(HIFunction *)screenReaderSectionFormatter {
	HIFunction *oldValue = _screenReaderSectionFormatter;
	if(self.screenReaderSectionFormatter) {
		[self removeObserver:self forKeyPath:@"screenReaderSectionFormatter.isUpdated"];
	}
	_screenReaderSectionFormatter = screenReaderSectionFormatter;
	[self updateHIObject:oldValue newValue:screenReaderSectionFormatter propertyName:@"screenReaderSectionFormatter"];
}

-(void)setDescribeSingleSeries:(NSNumber *)describeSingleSeries {
	_describeSingleSeries = describeSingleSeries;
	[self updateNSObject:@"describeSingleSeries"];
}

-(void)setKeyboardNavigation:(HIKeyboardNavigation *)keyboardNavigation {
	HIKeyboardNavigation *oldValue = _keyboardNavigation;
	if(self.keyboardNavigation) {
		[self removeObserver:self forKeyPath:@"keyboardNavigation.isUpdated"];
	}
	_keyboardNavigation = keyboardNavigation;
	[self updateHIObject:oldValue newValue:keyboardNavigation propertyName:@"keyboardNavigation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setPointDescriptionThreshold:(NSNumber *)pointDescriptionThreshold {
	_pointDescriptionThreshold = pointDescriptionThreshold;
	[self updateNSObject:@"pointDescriptionThreshold"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	if(self.pointDescriptionFormatter) {
		[self removeObserver:self forKeyPath:@"pointDescriptionFormatter.isUpdated"];
	}
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

-(void)setPointDateFormat:(NSString *)pointDateFormat {
	_pointDateFormat = pointDateFormat;
	[self updateNSObject:@"pointDateFormat"];
}

-(void)setSeriesDescriptionFormatter:(HIFunction *)seriesDescriptionFormatter {
	HIFunction *oldValue = _seriesDescriptionFormatter;
	if(self.seriesDescriptionFormatter) {
		[self removeObserver:self forKeyPath:@"seriesDescriptionFormatter.isUpdated"];
	}
	_seriesDescriptionFormatter = seriesDescriptionFormatter;
	[self updateHIObject:oldValue newValue:seriesDescriptionFormatter propertyName:@"seriesDescriptionFormatter"];
}

-(void)setOnTableAnchorClick:(HIFunction *)onTableAnchorClick {
	HIFunction *oldValue = _onTableAnchorClick;
	if(self.onTableAnchorClick) {
		[self removeObserver:self forKeyPath:@"onTableAnchorClick.isUpdated"];
	}
	_onTableAnchorClick = onTableAnchorClick;
	[self updateHIObject:oldValue newValue:onTableAnchorClick propertyName:@"onTableAnchorClick"];
}

-(void)setPointDateFormatter:(HIFunction *)pointDateFormatter {
	HIFunction *oldValue = _pointDateFormatter;
	if(self.pointDateFormatter) {
		[self removeObserver:self forKeyPath:@"pointDateFormatter.isUpdated"];
	}
	_pointDateFormatter = pointDateFormatter;
	[self updateHIObject:oldValue newValue:pointDateFormatter propertyName:@"pointDateFormatter"];
}

-(void)setDefaultChartTitle:(NSString *)defaultChartTitle {
	_defaultChartTitle = defaultChartTitle;
	[self updateNSObject:@"defaultChartTitle"];
}

-(void)setScreenReaderRegionLabel:(NSString *)screenReaderRegionLabel {
	_screenReaderRegionLabel = screenReaderRegionLabel;
	[self updateNSObject:@"screenReaderRegionLabel"];
}

-(void)setMapZoomIn:(NSString *)mapZoomIn {
	_mapZoomIn = mapZoomIn;
	[self updateNSObject:@"mapZoomIn"];
}

-(void)setAxis:(HIAxis *)axis {
	HIAxis *oldValue = _axis;
	if(self.axis) {
		[self removeObserver:self forKeyPath:@"axis.isUpdated"];
	}
	_axis = axis;
	[self updateHIObject:oldValue newValue:axis propertyName:@"axis"];
}

-(void)setRangeSelectorMinInput:(NSString *)rangeSelectorMinInput {
	_rangeSelectorMinInput = rangeSelectorMinInput;
	[self updateNSObject:@"rangeSelectorMinInput"];
}

-(void)setChartTypes:(HIChartTypes *)chartTypes {
	HIChartTypes *oldValue = _chartTypes;
	if(self.chartTypes) {
		[self removeObserver:self forKeyPath:@"chartTypes.isUpdated"];
	}
	_chartTypes = chartTypes;
	[self updateHIObject:oldValue newValue:chartTypes propertyName:@"chartTypes"];
}

-(void)setRangeSelectorButton:(NSString *)rangeSelectorButton {
	_rangeSelectorButton = rangeSelectorButton;
	[self updateNSObject:@"rangeSelectorButton"];
}

-(void)setLongDescriptionHeading:(NSString *)longDescriptionHeading {
	_longDescriptionHeading = longDescriptionHeading;
	[self updateNSObject:@"longDescriptionHeading"];
}

-(void)setExporting:(HIExporting *)exporting {
	HIExporting *oldValue = _exporting;
	if(self.exporting) {
		[self removeObserver:self forKeyPath:@"exporting.isUpdated"];
	}
	_exporting = exporting;
	[self updateHIObject:oldValue newValue:exporting propertyName:@"exporting"];
}

-(void)setChartHeading:(NSString *)chartHeading {
	_chartHeading = chartHeading;
	[self updateNSObject:@"chartHeading"];
}

-(void)setRangeSelectorMaxInput:(NSString *)rangeSelectorMaxInput {
	_rangeSelectorMaxInput = rangeSelectorMaxInput;
	[self updateNSObject:@"rangeSelectorMaxInput"];
}

-(void)setSeries:(HISeries *)series {
	HISeries *oldValue = _series;
	if(self.series) {
		[self removeObserver:self forKeyPath:@"series.isUpdated"];
	}
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setSeriesTypeDescriptions:(HISeriesTypeDescriptions *)seriesTypeDescriptions {
	HISeriesTypeDescriptions *oldValue = _seriesTypeDescriptions;
	if(self.seriesTypeDescriptions) {
		[self removeObserver:self forKeyPath:@"seriesTypeDescriptions.isUpdated"];
	}
	_seriesTypeDescriptions = seriesTypeDescriptions;
	[self updateHIObject:oldValue newValue:seriesTypeDescriptions propertyName:@"seriesTypeDescriptions"];
}

-(void)setLegendItem:(NSString *)legendItem {
	_legendItem = legendItem;
	[self updateNSObject:@"legendItem"];
}

-(void)setChartContainerLabel:(NSString *)chartContainerLabel {
	_chartContainerLabel = chartContainerLabel;
	[self updateNSObject:@"chartContainerLabel"];
}

-(void)setStructureHeading:(NSString *)structureHeading {
	_structureHeading = structureHeading;
	[self updateNSObject:@"structureHeading"];
}

-(void)setTableSummary:(NSString *)tableSummary {
	_tableSummary = tableSummary;
	[self updateNSObject:@"tableSummary"];
}

-(void)setNavigationHint:(NSString *)navigationHint {
	_navigationHint = navigationHint;
	[self updateNSObject:@"navigationHint"];
}

-(void)setNoDescription:(NSString *)noDescription {
	_noDescription = noDescription;
	[self updateNSObject:@"noDescription"];
}

-(void)setViewAsDataTable:(NSString *)viewAsDataTable {
	_viewAsDataTable = viewAsDataTable;
	[self updateNSObject:@"viewAsDataTable"];
}

-(void)setMapZoomOut:(NSString *)mapZoomOut {
	_mapZoomOut = mapZoomOut;
	[self updateNSObject:@"mapZoomOut"];
}

@end
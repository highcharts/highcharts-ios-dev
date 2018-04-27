#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIAccessibility *copyAccessibility = [[HIAccessibility allocWithZone: zone] init];
	copyAccessibility.screenReaderSectionFormatter = [self.screenReaderSectionFormatter copyWithZone: zone];
	copyAccessibility.describeSingleSeries = [self.describeSingleSeries copyWithZone: zone];
	copyAccessibility.keyboardNavigation = [self.keyboardNavigation copyWithZone: zone];
	copyAccessibility.enabled = [self.enabled copyWithZone: zone];
	copyAccessibility.pointDescriptionThreshold = [self.pointDescriptionThreshold copyWithZone: zone];
	copyAccessibility.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyAccessibility.pointDateFormat = [self.pointDateFormat copyWithZone: zone];
	copyAccessibility.seriesDescriptionFormatter = [self.seriesDescriptionFormatter copyWithZone: zone];
	copyAccessibility.onTableAnchorClick = [self.onTableAnchorClick copyWithZone: zone];
	copyAccessibility.pointDateFormatter = [self.pointDateFormatter copyWithZone: zone];
	copyAccessibility.chartTypes = [self.chartTypes copyWithZone: zone];
	copyAccessibility.longDescriptionHeading = [self.longDescriptionHeading copyWithZone: zone];
	copyAccessibility.rangeSelectorMaxInput = [self.rangeSelectorMaxInput copyWithZone: zone];
	copyAccessibility.structureHeading = [self.structureHeading copyWithZone: zone];
	copyAccessibility.chartContainerLabel = [self.chartContainerLabel copyWithZone: zone];
	copyAccessibility.axis = [self.axis copyWithZone: zone];
	copyAccessibility.series = [self.series copyWithZone: zone];
	copyAccessibility.exporting = [self.exporting copyWithZone: zone];
	copyAccessibility.mapZoomOut = [self.mapZoomOut copyWithZone: zone];
	copyAccessibility.rangeSelectorMinInput = [self.rangeSelectorMinInput copyWithZone: zone];
	copyAccessibility.rangeSelectorButton = [self.rangeSelectorButton copyWithZone: zone];
	copyAccessibility.legendItem = [self.legendItem copyWithZone: zone];
	copyAccessibility.tableSummary = [self.tableSummary copyWithZone: zone];
	copyAccessibility.noDescription = [self.noDescription copyWithZone: zone];
	copyAccessibility.viewAsDataTable = [self.viewAsDataTable copyWithZone: zone];
	copyAccessibility.defaultChartTitle = [self.defaultChartTitle copyWithZone: zone];
	copyAccessibility.screenReaderRegionLabel = [self.screenReaderRegionLabel copyWithZone: zone];
	copyAccessibility.mapZoomIn = [self.mapZoomIn copyWithZone: zone];
	copyAccessibility.chartHeading = [self.chartHeading copyWithZone: zone];
	copyAccessibility.svgContainerTitle = [self.svgContainerTitle copyWithZone: zone];
	copyAccessibility.navigationHint = [self.navigationHint copyWithZone: zone];
	copyAccessibility.seriesTypeDescriptions = [self.seriesTypeDescriptions copyWithZone: zone];
	return copyAccessibility;
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
	if (self.chartTypes) {
		params[@"chartTypes"] = [self.chartTypes getParams];
	}
	if (self.longDescriptionHeading) {
		params[@"longDescriptionHeading"] = self.longDescriptionHeading;
	}
	if (self.rangeSelectorMaxInput) {
		params[@"rangeSelectorMaxInput"] = self.rangeSelectorMaxInput;
	}
	if (self.structureHeading) {
		params[@"structureHeading"] = self.structureHeading;
	}
	if (self.chartContainerLabel) {
		params[@"chartContainerLabel"] = self.chartContainerLabel;
	}
	if (self.axis) {
		params[@"axis"] = [self.axis getParams];
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
	}
	if (self.mapZoomOut) {
		params[@"mapZoomOut"] = self.mapZoomOut;
	}
	if (self.rangeSelectorMinInput) {
		params[@"rangeSelectorMinInput"] = self.rangeSelectorMinInput;
	}
	if (self.rangeSelectorButton) {
		params[@"rangeSelectorButton"] = self.rangeSelectorButton;
	}
	if (self.legendItem) {
		params[@"legendItem"] = self.legendItem;
	}
	if (self.tableSummary) {
		params[@"tableSummary"] = self.tableSummary;
	}
	if (self.noDescription) {
		params[@"noDescription"] = self.noDescription;
	}
	if (self.viewAsDataTable) {
		params[@"viewAsDataTable"] = self.viewAsDataTable;
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
	if (self.chartHeading) {
		params[@"chartHeading"] = self.chartHeading;
	}
	if (self.svgContainerTitle) {
		params[@"svgContainerTitle"] = self.svgContainerTitle;
	}
	if (self.navigationHint) {
		params[@"navigationHint"] = self.navigationHint;
	}
	if (self.seriesTypeDescriptions) {
		params[@"seriesTypeDescriptions"] = [self.seriesTypeDescriptions getParams];
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

-(void)setChartTypes:(HIChartTypes *)chartTypes {
	HIChartTypes *oldValue = _chartTypes;
	if(self.chartTypes) {
		[self removeObserver:self forKeyPath:@"chartTypes.isUpdated"];
	}
	_chartTypes = chartTypes;
	[self updateHIObject:oldValue newValue:chartTypes propertyName:@"chartTypes"];
}

-(void)setLongDescriptionHeading:(NSString *)longDescriptionHeading {
	_longDescriptionHeading = longDescriptionHeading;
	[self updateNSObject:@"longDescriptionHeading"];
}

-(void)setRangeSelectorMaxInput:(NSString *)rangeSelectorMaxInput {
	_rangeSelectorMaxInput = rangeSelectorMaxInput;
	[self updateNSObject:@"rangeSelectorMaxInput"];
}

-(void)setStructureHeading:(NSString *)structureHeading {
	_structureHeading = structureHeading;
	[self updateNSObject:@"structureHeading"];
}

-(void)setChartContainerLabel:(NSString *)chartContainerLabel {
	_chartContainerLabel = chartContainerLabel;
	[self updateNSObject:@"chartContainerLabel"];
}

-(void)setAxis:(HIAxis *)axis {
	HIAxis *oldValue = _axis;
	if(self.axis) {
		[self removeObserver:self forKeyPath:@"axis.isUpdated"];
	}
	_axis = axis;
	[self updateHIObject:oldValue newValue:axis propertyName:@"axis"];
}

-(void)setSeries:(HISeries *)series {
	HISeries *oldValue = _series;
	if(self.series) {
		[self removeObserver:self forKeyPath:@"series.isUpdated"];
	}
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setExporting:(HIExporting *)exporting {
	HIExporting *oldValue = _exporting;
	if(self.exporting) {
		[self removeObserver:self forKeyPath:@"exporting.isUpdated"];
	}
	_exporting = exporting;
	[self updateHIObject:oldValue newValue:exporting propertyName:@"exporting"];
}

-(void)setMapZoomOut:(NSString *)mapZoomOut {
	_mapZoomOut = mapZoomOut;
	[self updateNSObject:@"mapZoomOut"];
}

-(void)setRangeSelectorMinInput:(NSString *)rangeSelectorMinInput {
	_rangeSelectorMinInput = rangeSelectorMinInput;
	[self updateNSObject:@"rangeSelectorMinInput"];
}

-(void)setRangeSelectorButton:(NSString *)rangeSelectorButton {
	_rangeSelectorButton = rangeSelectorButton;
	[self updateNSObject:@"rangeSelectorButton"];
}

-(void)setLegendItem:(NSString *)legendItem {
	_legendItem = legendItem;
	[self updateNSObject:@"legendItem"];
}

-(void)setTableSummary:(NSString *)tableSummary {
	_tableSummary = tableSummary;
	[self updateNSObject:@"tableSummary"];
}

-(void)setNoDescription:(NSString *)noDescription {
	_noDescription = noDescription;
	[self updateNSObject:@"noDescription"];
}

-(void)setViewAsDataTable:(NSString *)viewAsDataTable {
	_viewAsDataTable = viewAsDataTable;
	[self updateNSObject:@"viewAsDataTable"];
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

-(void)setChartHeading:(NSString *)chartHeading {
	_chartHeading = chartHeading;
	[self updateNSObject:@"chartHeading"];
}

-(void)setSvgContainerTitle:(NSString *)svgContainerTitle {
	_svgContainerTitle = svgContainerTitle;
	[self updateNSObject:@"svgContainerTitle"];
}

-(void)setNavigationHint:(NSString *)navigationHint {
	_navigationHint = navigationHint;
	[self updateNSObject:@"navigationHint"];
}

-(void)setSeriesTypeDescriptions:(HISeriesTypeDescriptions *)seriesTypeDescriptions {
	HISeriesTypeDescriptions *oldValue = _seriesTypeDescriptions;
	if(self.seriesTypeDescriptions) {
		[self removeObserver:self forKeyPath:@"seriesTypeDescriptions.isUpdated"];
	}
	_seriesTypeDescriptions = seriesTypeDescriptions;
	[self updateHIObject:oldValue newValue:seriesTypeDescriptions propertyName:@"seriesTypeDescriptions"];
}

@end
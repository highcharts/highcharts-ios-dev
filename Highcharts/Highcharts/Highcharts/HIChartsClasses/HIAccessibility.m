#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
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
	copyAccessibility.series = [self.series copyWithZone: zone];
	copyAccessibility.longDescriptionHeading = [self.longDescriptionHeading copyWithZone: zone];
	copyAccessibility.rangeSelectorMaxInput = [self.rangeSelectorMaxInput copyWithZone: zone];
	copyAccessibility.structureHeading = [self.structureHeading copyWithZone: zone];
	copyAccessibility.chartContainerLabel = [self.chartContainerLabel copyWithZone: zone];
	copyAccessibility.mapZoomOut = [self.mapZoomOut copyWithZone: zone];
	copyAccessibility.chartTypes = [self.chartTypes copyWithZone: zone];
	copyAccessibility.axis = [self.axis copyWithZone: zone];
	copyAccessibility.rangeSelectorMinInput = [self.rangeSelectorMinInput copyWithZone: zone];
	copyAccessibility.rangeSelectorButton = [self.rangeSelectorButton copyWithZone: zone];
	copyAccessibility.exporting = [self.exporting copyWithZone: zone];
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
	if (self.series) {
		params[@"series"] = [self.series getParams];
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
	if (self.mapZoomOut) {
		params[@"mapZoomOut"] = self.mapZoomOut;
	}
	if (self.chartTypes) {
		params[@"chartTypes"] = [self.chartTypes getParams];
	}
	if (self.axis) {
		params[@"axis"] = [self.axis getParams];
	}
	if (self.rangeSelectorMinInput) {
		params[@"rangeSelectorMinInput"] = self.rangeSelectorMinInput;
	}
	if (self.rangeSelectorButton) {
		params[@"rangeSelectorButton"] = self.rangeSelectorButton;
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
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
	_screenReaderSectionFormatter = screenReaderSectionFormatter;
	[self updateHIObject:oldValue newValue:screenReaderSectionFormatter propertyName:@"screenReaderSectionFormatter"];
}

-(void)setDescribeSingleSeries:(NSNumber *)describeSingleSeries {
	NSNumber *oldValue = _describeSingleSeries;
	_describeSingleSeries = describeSingleSeries;
	[self updateNSObject:oldValue newValue:describeSingleSeries propertyName:@"describeSingleSeries"];
}

-(void)setKeyboardNavigation:(HIKeyboardNavigation *)keyboardNavigation {
	HIKeyboardNavigation *oldValue = _keyboardNavigation;
	_keyboardNavigation = keyboardNavigation;
	[self updateHIObject:oldValue newValue:keyboardNavigation propertyName:@"keyboardNavigation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setPointDescriptionThreshold:(NSNumber *)pointDescriptionThreshold {
	NSNumber *oldValue = _pointDescriptionThreshold;
	_pointDescriptionThreshold = pointDescriptionThreshold;
	[self updateNSObject:oldValue newValue:pointDescriptionThreshold propertyName:@"pointDescriptionThreshold"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

-(void)setPointDateFormat:(NSString *)pointDateFormat {
	NSString *oldValue = _pointDateFormat;
	_pointDateFormat = pointDateFormat;
	[self updateNSObject:oldValue newValue:pointDateFormat propertyName:@"pointDateFormat"];
}

-(void)setSeriesDescriptionFormatter:(HIFunction *)seriesDescriptionFormatter {
	HIFunction *oldValue = _seriesDescriptionFormatter;
	_seriesDescriptionFormatter = seriesDescriptionFormatter;
	[self updateHIObject:oldValue newValue:seriesDescriptionFormatter propertyName:@"seriesDescriptionFormatter"];
}

-(void)setOnTableAnchorClick:(HIFunction *)onTableAnchorClick {
	HIFunction *oldValue = _onTableAnchorClick;
	_onTableAnchorClick = onTableAnchorClick;
	[self updateHIObject:oldValue newValue:onTableAnchorClick propertyName:@"onTableAnchorClick"];
}

-(void)setPointDateFormatter:(HIFunction *)pointDateFormatter {
	HIFunction *oldValue = _pointDateFormatter;
	_pointDateFormatter = pointDateFormatter;
	[self updateHIObject:oldValue newValue:pointDateFormatter propertyName:@"pointDateFormatter"];
}

-(void)setSeries:(HISeries *)series {
	HISeries *oldValue = _series;
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setLongDescriptionHeading:(NSString *)longDescriptionHeading {
	NSString *oldValue = _longDescriptionHeading;
	_longDescriptionHeading = longDescriptionHeading;
	[self updateNSObject:oldValue newValue:longDescriptionHeading propertyName:@"longDescriptionHeading"];
}

-(void)setRangeSelectorMaxInput:(NSString *)rangeSelectorMaxInput {
	NSString *oldValue = _rangeSelectorMaxInput;
	_rangeSelectorMaxInput = rangeSelectorMaxInput;
	[self updateNSObject:oldValue newValue:rangeSelectorMaxInput propertyName:@"rangeSelectorMaxInput"];
}

-(void)setStructureHeading:(NSString *)structureHeading {
	NSString *oldValue = _structureHeading;
	_structureHeading = structureHeading;
	[self updateNSObject:oldValue newValue:structureHeading propertyName:@"structureHeading"];
}

-(void)setChartContainerLabel:(NSString *)chartContainerLabel {
	NSString *oldValue = _chartContainerLabel;
	_chartContainerLabel = chartContainerLabel;
	[self updateNSObject:oldValue newValue:chartContainerLabel propertyName:@"chartContainerLabel"];
}

-(void)setMapZoomOut:(NSString *)mapZoomOut {
	NSString *oldValue = _mapZoomOut;
	_mapZoomOut = mapZoomOut;
	[self updateNSObject:oldValue newValue:mapZoomOut propertyName:@"mapZoomOut"];
}

-(void)setChartTypes:(HIChartTypes *)chartTypes {
	HIChartTypes *oldValue = _chartTypes;
	_chartTypes = chartTypes;
	[self updateHIObject:oldValue newValue:chartTypes propertyName:@"chartTypes"];
}

-(void)setAxis:(HIAxis *)axis {
	HIAxis *oldValue = _axis;
	_axis = axis;
	[self updateHIObject:oldValue newValue:axis propertyName:@"axis"];
}

-(void)setRangeSelectorMinInput:(NSString *)rangeSelectorMinInput {
	NSString *oldValue = _rangeSelectorMinInput;
	_rangeSelectorMinInput = rangeSelectorMinInput;
	[self updateNSObject:oldValue newValue:rangeSelectorMinInput propertyName:@"rangeSelectorMinInput"];
}

-(void)setRangeSelectorButton:(NSString *)rangeSelectorButton {
	NSString *oldValue = _rangeSelectorButton;
	_rangeSelectorButton = rangeSelectorButton;
	[self updateNSObject:oldValue newValue:rangeSelectorButton propertyName:@"rangeSelectorButton"];
}

-(void)setExporting:(HIExporting *)exporting {
	HIExporting *oldValue = _exporting;
	_exporting = exporting;
	[self updateHIObject:oldValue newValue:exporting propertyName:@"exporting"];
}

-(void)setLegendItem:(NSString *)legendItem {
	NSString *oldValue = _legendItem;
	_legendItem = legendItem;
	[self updateNSObject:oldValue newValue:legendItem propertyName:@"legendItem"];
}

-(void)setTableSummary:(NSString *)tableSummary {
	NSString *oldValue = _tableSummary;
	_tableSummary = tableSummary;
	[self updateNSObject:oldValue newValue:tableSummary propertyName:@"tableSummary"];
}

-(void)setNoDescription:(NSString *)noDescription {
	NSString *oldValue = _noDescription;
	_noDescription = noDescription;
	[self updateNSObject:oldValue newValue:noDescription propertyName:@"noDescription"];
}

-(void)setViewAsDataTable:(NSString *)viewAsDataTable {
	NSString *oldValue = _viewAsDataTable;
	_viewAsDataTable = viewAsDataTable;
	[self updateNSObject:oldValue newValue:viewAsDataTable propertyName:@"viewAsDataTable"];
}

-(void)setDefaultChartTitle:(NSString *)defaultChartTitle {
	NSString *oldValue = _defaultChartTitle;
	_defaultChartTitle = defaultChartTitle;
	[self updateNSObject:oldValue newValue:defaultChartTitle propertyName:@"defaultChartTitle"];
}

-(void)setScreenReaderRegionLabel:(NSString *)screenReaderRegionLabel {
	NSString *oldValue = _screenReaderRegionLabel;
	_screenReaderRegionLabel = screenReaderRegionLabel;
	[self updateNSObject:oldValue newValue:screenReaderRegionLabel propertyName:@"screenReaderRegionLabel"];
}

-(void)setMapZoomIn:(NSString *)mapZoomIn {
	NSString *oldValue = _mapZoomIn;
	_mapZoomIn = mapZoomIn;
	[self updateNSObject:oldValue newValue:mapZoomIn propertyName:@"mapZoomIn"];
}

-(void)setChartHeading:(NSString *)chartHeading {
	NSString *oldValue = _chartHeading;
	_chartHeading = chartHeading;
	[self updateNSObject:oldValue newValue:chartHeading propertyName:@"chartHeading"];
}

-(void)setSvgContainerTitle:(NSString *)svgContainerTitle {
	NSString *oldValue = _svgContainerTitle;
	_svgContainerTitle = svgContainerTitle;
	[self updateNSObject:oldValue newValue:svgContainerTitle propertyName:@"svgContainerTitle"];
}

-(void)setNavigationHint:(NSString *)navigationHint {
	NSString *oldValue = _navigationHint;
	_navigationHint = navigationHint;
	[self updateNSObject:oldValue newValue:navigationHint propertyName:@"navigationHint"];
}

-(void)setSeriesTypeDescriptions:(HISeriesTypeDescriptions *)seriesTypeDescriptions {
	HISeriesTypeDescriptions *oldValue = _seriesTypeDescriptions;
	_seriesTypeDescriptions = seriesTypeDescriptions;
	[self updateHIObject:oldValue newValue:seriesTypeDescriptions propertyName:@"seriesTypeDescriptions"];
}

@end

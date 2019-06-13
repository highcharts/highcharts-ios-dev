#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAccessibility *copyAccessibility = [[HIAccessibility allocWithZone: zone] init];
	copyAccessibility.addTableShortcut = [self.addTableShortcut copyWithZone: zone];
	copyAccessibility.landmarkVerbosity = [self.landmarkVerbosity copyWithZone: zone];
	copyAccessibility.customComponents = [self.customComponents copyWithZone: zone];
	copyAccessibility.pointValueDecimals = [self.pointValueDecimals copyWithZone: zone];
	copyAccessibility.screenReaderSectionFormatter = [self.screenReaderSectionFormatter copyWithZone: zone];
	copyAccessibility.onTableAnchorClick = [self.onTableAnchorClick copyWithZone: zone];
	copyAccessibility.seriesDescriptionFormatter = [self.seriesDescriptionFormatter copyWithZone: zone];
	copyAccessibility.keyboardNavigation = [self.keyboardNavigation copyWithZone: zone];
	copyAccessibility.enabled = [self.enabled copyWithZone: zone];
	copyAccessibility.pointValueSuffix = [self.pointValueSuffix copyWithZone: zone];
	copyAccessibility.axisRangeDateFormat = [self.axisRangeDateFormat copyWithZone: zone];
	copyAccessibility.pointValuePrefix = [self.pointValuePrefix copyWithZone: zone];
	copyAccessibility.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyAccessibility.pointDateFormat = [self.pointDateFormat copyWithZone: zone];
	copyAccessibility.announceNewData = [self.announceNewData copyWithZone: zone];
	copyAccessibility.pointDescriptionThreshold = [self.pointDescriptionThreshold copyWithZone: zone];
	copyAccessibility.typeDescription = [self.typeDescription copyWithZone: zone];
	copyAccessibility.describeSingleSeries = [self.describeSingleSeries copyWithZone: zone];
	copyAccessibility.pointDateFormatter = [self.pointDateFormatter copyWithZone: zone];
	copyAccessibility.definition = [self.definition copyWithZone: zone];
	copyAccessibility.exposeAsGroupOnly = [self.exposeAsGroupOnly copyWithZone: zone];
	copyAccessibility.rangeDescription = [self.rangeDescription copyWithZone: zone];
	copyAccessibility.legendLabel = [self.legendLabel copyWithZone: zone];
	copyAccessibility.chartTypes = [self.chartTypes copyWithZone: zone];
	copyAccessibility.rangeSelectorMaxInput = [self.rangeSelectorMaxInput copyWithZone: zone];
	copyAccessibility.drillUpButton = [self.drillUpButton copyWithZone: zone];
	copyAccessibility.chartContainerLabel = [self.chartContainerLabel copyWithZone: zone];
	copyAccessibility.mapZoomOut = [self.mapZoomOut copyWithZone: zone];
	copyAccessibility.series = [self.series copyWithZone: zone];
	copyAccessibility.axis = [self.axis copyWithZone: zone];
	copyAccessibility.svgContainerLabel = [self.svgContainerLabel copyWithZone: zone];
	copyAccessibility.rangeSelectorMinInput = [self.rangeSelectorMinInput copyWithZone: zone];
	copyAccessibility.rangeSelectorButton = [self.rangeSelectorButton copyWithZone: zone];
	copyAccessibility.exporting = [self.exporting copyWithZone: zone];
	copyAccessibility.legendItem = [self.legendItem copyWithZone: zone];
	copyAccessibility.tableSummary = [self.tableSummary copyWithZone: zone];
	copyAccessibility.viewAsDataTable = [self.viewAsDataTable copyWithZone: zone];
	copyAccessibility.defaultChartTitle = [self.defaultChartTitle copyWithZone: zone];
	copyAccessibility.screenReaderRegionLabel = [self.screenReaderRegionLabel copyWithZone: zone];
	copyAccessibility.mapZoomIn = [self.mapZoomIn copyWithZone: zone];
	copyAccessibility.chartHeading = [self.chartHeading copyWithZone: zone];
	copyAccessibility.resetZoomButton = [self.resetZoomButton copyWithZone: zone];
	copyAccessibility.svgContainerEnd = [self.svgContainerEnd copyWithZone: zone];
	copyAccessibility.svgContainerTitle = [self.svgContainerTitle copyWithZone: zone];
	copyAccessibility.seriesTypeDescriptions = [self.seriesTypeDescriptions copyWithZone: zone];
	copyAccessibility.thousandsSep = [self.thousandsSep copyWithZone: zone];
	return copyAccessibility;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.addTableShortcut) {
		params[@"addTableShortcut"] = self.addTableShortcut;
	}
	if (self.landmarkVerbosity) {
		params[@"landmarkVerbosity"] = self.landmarkVerbosity;
	}
	if (self.customComponents) {
		params[@"customComponents"] = self.customComponents;
	}
	if (self.pointValueDecimals) {
		params[@"pointValueDecimals"] = self.pointValueDecimals;
	}
	if (self.screenReaderSectionFormatter) {
		params[@"screenReaderSectionFormatter"] = [self.screenReaderSectionFormatter getFunction];
	}
	if (self.onTableAnchorClick) {
		params[@"onTableAnchorClick"] = [self.onTableAnchorClick getFunction];
	}
	if (self.seriesDescriptionFormatter) {
		params[@"seriesDescriptionFormatter"] = [self.seriesDescriptionFormatter getFunction];
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.pointValueSuffix) {
		params[@"pointValueSuffix"] = self.pointValueSuffix;
	}
	if (self.axisRangeDateFormat) {
		params[@"axisRangeDateFormat"] = self.axisRangeDateFormat;
	}
	if (self.pointValuePrefix) {
		params[@"pointValuePrefix"] = self.pointValuePrefix;
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.pointDateFormat) {
		params[@"pointDateFormat"] = self.pointDateFormat;
	}
	if (self.announceNewData) {
		params[@"announceNewData"] = [self.announceNewData getParams];
	}
	if (self.pointDescriptionThreshold) {
		params[@"pointDescriptionThreshold"] = self.pointDescriptionThreshold;
	}
	if (self.typeDescription) {
		params[@"typeDescription"] = self.typeDescription;
	}
	if (self.describeSingleSeries) {
		params[@"describeSingleSeries"] = self.describeSingleSeries;
	}
	if (self.pointDateFormatter) {
		params[@"pointDateFormatter"] = [self.pointDateFormatter getFunction];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.exposeAsGroupOnly) {
		params[@"exposeAsGroupOnly"] = self.exposeAsGroupOnly;
	}
	if (self.rangeDescription) {
		params[@"rangeDescription"] = self.rangeDescription;
	}
	if (self.legendLabel) {
		params[@"legendLabel"] = self.legendLabel;
	}
	if (self.chartTypes) {
		params[@"chartTypes"] = [self.chartTypes getParams];
	}
	if (self.rangeSelectorMaxInput) {
		params[@"rangeSelectorMaxInput"] = self.rangeSelectorMaxInput;
	}
	if (self.drillUpButton) {
		params[@"drillUpButton"] = self.drillUpButton;
	}
	if (self.chartContainerLabel) {
		params[@"chartContainerLabel"] = self.chartContainerLabel;
	}
	if (self.mapZoomOut) {
		params[@"mapZoomOut"] = self.mapZoomOut;
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	if (self.axis) {
		params[@"axis"] = [self.axis getParams];
	}
	if (self.svgContainerLabel) {
		params[@"svgContainerLabel"] = self.svgContainerLabel;
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
	if (self.resetZoomButton) {
		params[@"resetZoomButton"] = self.resetZoomButton;
	}
	if (self.svgContainerEnd) {
		params[@"svgContainerEnd"] = self.svgContainerEnd;
	}
	if (self.svgContainerTitle) {
		params[@"svgContainerTitle"] = self.svgContainerTitle;
	}
	if (self.seriesTypeDescriptions) {
		params[@"seriesTypeDescriptions"] = [self.seriesTypeDescriptions getParams];
	}
	if (self.thousandsSep) {
		params[@"thousandsSep"] = self.thousandsSep;
	}
	return params;
}

# pragma mark - Setters

-(void)setAddTableShortcut:(NSNumber *)addTableShortcut {
	NSNumber *oldValue = _addTableShortcut;
	_addTableShortcut = addTableShortcut;
	[self updateNSObject:oldValue newValue:addTableShortcut propertyName:@"addTableShortcut"];
}

-(void)setLandmarkVerbosity:(NSString *)landmarkVerbosity {
	NSString *oldValue = _landmarkVerbosity;
	_landmarkVerbosity = landmarkVerbosity;
	[self updateNSObject:oldValue newValue:landmarkVerbosity propertyName:@"landmarkVerbosity"];
}

-(void)setCustomComponents:(id)customComponents {
	id oldValue = _customComponents;
	_customComponents = customComponents;
	[self updateNSObject:oldValue newValue:customComponents propertyName:@"customComponents"];
}

-(void)setPointValueDecimals:(NSString *)pointValueDecimals {
	NSString *oldValue = _pointValueDecimals;
	_pointValueDecimals = pointValueDecimals;
	[self updateNSObject:oldValue newValue:pointValueDecimals propertyName:@"pointValueDecimals"];
}

-(void)setScreenReaderSectionFormatter:(HIFunction *)screenReaderSectionFormatter {
	HIFunction *oldValue = _screenReaderSectionFormatter;
	_screenReaderSectionFormatter = screenReaderSectionFormatter;
	[self updateHIObject:oldValue newValue:screenReaderSectionFormatter propertyName:@"screenReaderSectionFormatter"];
}

-(void)setOnTableAnchorClick:(HIFunction *)onTableAnchorClick {
	HIFunction *oldValue = _onTableAnchorClick;
	_onTableAnchorClick = onTableAnchorClick;
	[self updateHIObject:oldValue newValue:onTableAnchorClick propertyName:@"onTableAnchorClick"];
}

-(void)setSeriesDescriptionFormatter:(HIFunction *)seriesDescriptionFormatter {
	HIFunction *oldValue = _seriesDescriptionFormatter;
	_seriesDescriptionFormatter = seriesDescriptionFormatter;
	[self updateHIObject:oldValue newValue:seriesDescriptionFormatter propertyName:@"seriesDescriptionFormatter"];
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

-(void)setPointValueSuffix:(NSString *)pointValueSuffix {
	NSString *oldValue = _pointValueSuffix;
	_pointValueSuffix = pointValueSuffix;
	[self updateNSObject:oldValue newValue:pointValueSuffix propertyName:@"pointValueSuffix"];
}

-(void)setAxisRangeDateFormat:(NSString *)axisRangeDateFormat {
	NSString *oldValue = _axisRangeDateFormat;
	_axisRangeDateFormat = axisRangeDateFormat;
	[self updateNSObject:oldValue newValue:axisRangeDateFormat propertyName:@"axisRangeDateFormat"];
}

-(void)setPointValuePrefix:(NSString *)pointValuePrefix {
	NSString *oldValue = _pointValuePrefix;
	_pointValuePrefix = pointValuePrefix;
	[self updateNSObject:oldValue newValue:pointValuePrefix propertyName:@"pointValuePrefix"];
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

-(void)setAnnounceNewData:(HIAnnounceNewData *)announceNewData {
	HIAnnounceNewData *oldValue = _announceNewData;
	_announceNewData = announceNewData;
	[self updateHIObject:oldValue newValue:announceNewData propertyName:@"announceNewData"];
}

-(void)setPointDescriptionThreshold:(NSNumber *)pointDescriptionThreshold {
	NSNumber *oldValue = _pointDescriptionThreshold;
	_pointDescriptionThreshold = pointDescriptionThreshold;
	[self updateNSObject:oldValue newValue:pointDescriptionThreshold propertyName:@"pointDescriptionThreshold"];
}

-(void)setTypeDescription:(NSString *)typeDescription {
	NSString *oldValue = _typeDescription;
	_typeDescription = typeDescription;
	[self updateNSObject:oldValue newValue:typeDescription propertyName:@"typeDescription"];
}

-(void)setDescribeSingleSeries:(NSNumber *)describeSingleSeries {
	NSNumber *oldValue = _describeSingleSeries;
	_describeSingleSeries = describeSingleSeries;
	[self updateNSObject:oldValue newValue:describeSingleSeries propertyName:@"describeSingleSeries"];
}

-(void)setPointDateFormatter:(HIFunction *)pointDateFormatter {
	HIFunction *oldValue = _pointDateFormatter;
	_pointDateFormatter = pointDateFormatter;
	[self updateHIObject:oldValue newValue:pointDateFormatter propertyName:@"pointDateFormatter"];
}

-(void)setDefinition:(NSString *)definition {
	NSString *oldValue = _definition;
	_definition = definition;
	[self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setExposeAsGroupOnly:(NSNumber *)exposeAsGroupOnly {
	NSNumber *oldValue = _exposeAsGroupOnly;
	_exposeAsGroupOnly = exposeAsGroupOnly;
	[self updateNSObject:oldValue newValue:exposeAsGroupOnly propertyName:@"exposeAsGroupOnly"];
}

-(void)setRangeDescription:(NSString *)rangeDescription {
	NSString *oldValue = _rangeDescription;
	_rangeDescription = rangeDescription;
	[self updateNSObject:oldValue newValue:rangeDescription propertyName:@"rangeDescription"];
}

-(void)setLegendLabel:(NSString *)legendLabel {
	NSString *oldValue = _legendLabel;
	_legendLabel = legendLabel;
	[self updateNSObject:oldValue newValue:legendLabel propertyName:@"legendLabel"];
}

-(void)setChartTypes:(HIChartTypes *)chartTypes {
	HIChartTypes *oldValue = _chartTypes;
	_chartTypes = chartTypes;
	[self updateHIObject:oldValue newValue:chartTypes propertyName:@"chartTypes"];
}

-(void)setRangeSelectorMaxInput:(NSString *)rangeSelectorMaxInput {
	NSString *oldValue = _rangeSelectorMaxInput;
	_rangeSelectorMaxInput = rangeSelectorMaxInput;
	[self updateNSObject:oldValue newValue:rangeSelectorMaxInput propertyName:@"rangeSelectorMaxInput"];
}

-(void)setDrillUpButton:(NSString *)drillUpButton {
	NSString *oldValue = _drillUpButton;
	_drillUpButton = drillUpButton;
	[self updateNSObject:oldValue newValue:drillUpButton propertyName:@"drillUpButton"];
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

-(void)setSeries:(HIAccessibilitySeries *)series {
	HIAccessibilitySeries *oldValue = _series;
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setAxis:(HIAxis *)axis {
	HIAxis *oldValue = _axis;
	_axis = axis;
	[self updateHIObject:oldValue newValue:axis propertyName:@"axis"];
}

-(void)setSvgContainerLabel:(NSString *)svgContainerLabel {
	NSString *oldValue = _svgContainerLabel;
	_svgContainerLabel = svgContainerLabel;
	[self updateNSObject:oldValue newValue:svgContainerLabel propertyName:@"svgContainerLabel"];
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

-(void)setExporting:(HIAccessibilityExporting *)exporting {
	HIAccessibilityExporting *oldValue = _exporting;
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

-(void)setResetZoomButton:(NSString *)resetZoomButton {
	NSString *oldValue = _resetZoomButton;
	_resetZoomButton = resetZoomButton;
	[self updateNSObject:oldValue newValue:resetZoomButton propertyName:@"resetZoomButton"];
}

-(void)setSvgContainerEnd:(NSString *)svgContainerEnd {
	NSString *oldValue = _svgContainerEnd;
	_svgContainerEnd = svgContainerEnd;
	[self updateNSObject:oldValue newValue:svgContainerEnd propertyName:@"svgContainerEnd"];
}

-(void)setSvgContainerTitle:(NSString *)svgContainerTitle {
	NSString *oldValue = _svgContainerTitle;
	_svgContainerTitle = svgContainerTitle;
	[self updateNSObject:oldValue newValue:svgContainerTitle propertyName:@"svgContainerTitle"];
}

-(void)setSeriesTypeDescriptions:(HISeriesTypeDescriptions *)seriesTypeDescriptions {
	HISeriesTypeDescriptions *oldValue = _seriesTypeDescriptions;
	_seriesTypeDescriptions = seriesTypeDescriptions;
	[self updateHIObject:oldValue newValue:seriesTypeDescriptions propertyName:@"seriesTypeDescriptions"];
}

-(void)setThousandsSep:(NSString *)thousandsSep {
	NSString *oldValue = _thousandsSep;
	_thousandsSep = thousandsSep;
	[self updateNSObject:oldValue newValue:thousandsSep propertyName:@"thousandsSep"];
}

@end

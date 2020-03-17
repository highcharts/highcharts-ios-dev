#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAccessibility *copyAccessibility = [[HIAccessibility allocWithZone: zone] init];
	copyAccessibility.landmarkVerbosity = [self.landmarkVerbosity copyWithZone: zone];
	copyAccessibility.customComponents = [self.customComponents copyWithZone: zone];
	copyAccessibility.linkedDescription = [self.linkedDescription copyWithZone: zone];
	copyAccessibility.point = [self.point copyWithZone: zone];
	copyAccessibility.series = [self.series copyWithZone: zone];
	copyAccessibility.keyboardNavigation = [self.keyboardNavigation copyWithZone: zone];
	copyAccessibility.enabled = [self.enabled copyWithZone: zone];
	copyAccessibility.screenReaderSection = [self.screenReaderSection copyWithZone: zone];
	copyAccessibility.announceNewData = [self.announceNewData copyWithZone: zone];
	copyAccessibility.typeDescription = [self.typeDescription copyWithZone: zone];
	copyAccessibility.highContrastTheme = [self.highContrastTheme copyWithZone: zone];
	copyAccessibility.definition = [self.definition copyWithZone: zone];
	copyAccessibility.exposeAsGroupOnly = [self.exposeAsGroupOnly copyWithZone: zone];
	copyAccessibility.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyAccessibility.rangeDescription = [self.rangeDescription copyWithZone: zone];
	copyAccessibility.defaultChartTitle = [self.defaultChartTitle copyWithZone: zone];
	copyAccessibility.svgContainerLabel = [self.svgContainerLabel copyWithZone: zone];
	copyAccessibility.thousandsSep = [self.thousandsSep copyWithZone: zone];
	copyAccessibility.chartTypes = [self.chartTypes copyWithZone: zone];
	copyAccessibility.table = [self.table copyWithZone: zone];
	copyAccessibility.zoom = [self.zoom copyWithZone: zone];
	copyAccessibility.credits = [self.credits copyWithZone: zone];
	copyAccessibility.seriesTypeDescriptions = [self.seriesTypeDescriptions copyWithZone: zone];
	copyAccessibility.drillUpButton = [self.drillUpButton copyWithZone: zone];
	copyAccessibility.exporting = [self.exporting copyWithZone: zone];
	copyAccessibility.rangeSelector = [self.rangeSelector copyWithZone: zone];
	copyAccessibility.svgContainerTitle = [self.svgContainerTitle copyWithZone: zone];
	copyAccessibility.sonification = [self.sonification copyWithZone: zone];
	copyAccessibility.graphicContainerLabel = [self.graphicContainerLabel copyWithZone: zone];
	copyAccessibility.legend = [self.legend copyWithZone: zone];
	copyAccessibility.chartContainerLabel = [self.chartContainerLabel copyWithZone: zone];
	copyAccessibility.axis = [self.axis copyWithZone: zone];
	return copyAccessibility;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.landmarkVerbosity) {
		params[@"landmarkVerbosity"] = self.landmarkVerbosity;
	}
	if (self.customComponents) {
		params[@"customComponents"] = self.customComponents;
	}
	if (self.linkedDescription) {
		params[@"linkedDescription"] = self.linkedDescription;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.screenReaderSection) {
		params[@"screenReaderSection"] = [self.screenReaderSection getParams];
	}
	if (self.announceNewData) {
		params[@"announceNewData"] = [self.announceNewData getParams];
	}
	if (self.typeDescription) {
		params[@"typeDescription"] = self.typeDescription;
	}
	if (self.highContrastTheme) {
		params[@"highContrastTheme"] = self.highContrastTheme;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.exposeAsGroupOnly) {
		params[@"exposeAsGroupOnly"] = self.exposeAsGroupOnly;
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.rangeDescription) {
		params[@"rangeDescription"] = self.rangeDescription;
	}
	if (self.defaultChartTitle) {
		params[@"defaultChartTitle"] = self.defaultChartTitle;
	}
	if (self.svgContainerLabel) {
		params[@"svgContainerLabel"] = self.svgContainerLabel;
	}
	if (self.thousandsSep) {
		params[@"thousandsSep"] = self.thousandsSep;
	}
	if (self.chartTypes) {
		params[@"chartTypes"] = [self.chartTypes getParams];
	}
	if (self.table) {
		params[@"table"] = [self.table getParams];
	}
	if (self.zoom) {
		params[@"zoom"] = [self.zoom getParams];
	}
	if (self.credits) {
		params[@"credits"] = self.credits;
	}
	if (self.seriesTypeDescriptions) {
		params[@"seriesTypeDescriptions"] = [self.seriesTypeDescriptions getParams];
	}
	if (self.drillUpButton) {
		params[@"drillUpButton"] = self.drillUpButton;
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
	}
	if (self.rangeSelector) {
		params[@"rangeSelector"] = [self.rangeSelector getParams];
	}
	if (self.svgContainerTitle) {
		params[@"svgContainerTitle"] = self.svgContainerTitle;
	}
	if (self.sonification) {
		params[@"sonification"] = [self.sonification getParams];
	}
	if (self.graphicContainerLabel) {
		params[@"graphicContainerLabel"] = self.graphicContainerLabel;
	}
	if (self.legend) {
		params[@"legend"] = [self.legend getParams];
	}
	if (self.chartContainerLabel) {
		params[@"chartContainerLabel"] = self.chartContainerLabel;
	}
	if (self.axis) {
		params[@"axis"] = [self.axis getParams];
	}
	return params;
}

# pragma mark - Setters

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

-(void)setLinkedDescription:(NSString *)linkedDescription {
	NSString *oldValue = _linkedDescription;
	_linkedDescription = linkedDescription;
	[self updateNSObject:oldValue newValue:linkedDescription propertyName:@"linkedDescription"];
}

-(void)setPoint:(HIPoint *)point {
	HIPoint *oldValue = _point;
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

-(void)setSeries:(HIAccessibilitySeries *)series {
	HIAccessibilitySeries *oldValue = _series;
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
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

-(void)setScreenReaderSection:(HIScreenReaderSection *)screenReaderSection {
	HIScreenReaderSection *oldValue = _screenReaderSection;
	_screenReaderSection = screenReaderSection;
	[self updateHIObject:oldValue newValue:screenReaderSection propertyName:@"screenReaderSection"];
}

-(void)setAnnounceNewData:(HIAnnounceNewData *)announceNewData {
	HIAnnounceNewData *oldValue = _announceNewData;
	_announceNewData = announceNewData;
	[self updateHIObject:oldValue newValue:announceNewData propertyName:@"announceNewData"];
}

-(void)setTypeDescription:(NSString *)typeDescription {
	NSString *oldValue = _typeDescription;
	_typeDescription = typeDescription;
	[self updateNSObject:oldValue newValue:typeDescription propertyName:@"typeDescription"];
}

-(void)setHighContrastTheme:(id)highContrastTheme {
	id oldValue = _highContrastTheme;
	_highContrastTheme = highContrastTheme;
	[self updateNSObject:oldValue newValue:highContrastTheme propertyName:@"highContrastTheme"];
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

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

-(void)setRangeDescription:(NSString *)rangeDescription {
	NSString *oldValue = _rangeDescription;
	_rangeDescription = rangeDescription;
	[self updateNSObject:oldValue newValue:rangeDescription propertyName:@"rangeDescription"];
}

-(void)setDefaultChartTitle:(NSString *)defaultChartTitle {
	NSString *oldValue = _defaultChartTitle;
	_defaultChartTitle = defaultChartTitle;
	[self updateNSObject:oldValue newValue:defaultChartTitle propertyName:@"defaultChartTitle"];
}

-(void)setSvgContainerLabel:(NSString *)svgContainerLabel {
	NSString *oldValue = _svgContainerLabel;
	_svgContainerLabel = svgContainerLabel;
	[self updateNSObject:oldValue newValue:svgContainerLabel propertyName:@"svgContainerLabel"];
}

-(void)setThousandsSep:(NSString *)thousandsSep {
	NSString *oldValue = _thousandsSep;
	_thousandsSep = thousandsSep;
	[self updateNSObject:oldValue newValue:thousandsSep propertyName:@"thousandsSep"];
}

-(void)setChartTypes:(HIChartTypes *)chartTypes {
	HIChartTypes *oldValue = _chartTypes;
	_chartTypes = chartTypes;
	[self updateHIObject:oldValue newValue:chartTypes propertyName:@"chartTypes"];
}

-(void)setTable:(HITable *)table {
	HITable *oldValue = _table;
	_table = table;
	[self updateHIObject:oldValue newValue:table propertyName:@"table"];
}

-(void)setZoom:(HIZoom *)zoom {
	HIZoom *oldValue = _zoom;
	_zoom = zoom;
	[self updateHIObject:oldValue newValue:zoom propertyName:@"zoom"];
}

-(void)setCredits:(NSString *)credits {
	NSString *oldValue = _credits;
	_credits = credits;
	[self updateNSObject:oldValue newValue:credits propertyName:@"credits"];
}

-(void)setSeriesTypeDescriptions:(HISeriesTypeDescriptions *)seriesTypeDescriptions {
	HISeriesTypeDescriptions *oldValue = _seriesTypeDescriptions;
	_seriesTypeDescriptions = seriesTypeDescriptions;
	[self updateHIObject:oldValue newValue:seriesTypeDescriptions propertyName:@"seriesTypeDescriptions"];
}

-(void)setDrillUpButton:(NSString *)drillUpButton {
	NSString *oldValue = _drillUpButton;
	_drillUpButton = drillUpButton;
	[self updateNSObject:oldValue newValue:drillUpButton propertyName:@"drillUpButton"];
}

-(void)setExporting:(HIAccessibilityExporting *)exporting {
	HIAccessibilityExporting *oldValue = _exporting;
	_exporting = exporting;
	[self updateHIObject:oldValue newValue:exporting propertyName:@"exporting"];
}

-(void)setRangeSelector:(HIRangeSelector *)rangeSelector {
	HIRangeSelector *oldValue = _rangeSelector;
	_rangeSelector = rangeSelector;
	[self updateHIObject:oldValue newValue:rangeSelector propertyName:@"rangeSelector"];
}

-(void)setSvgContainerTitle:(NSString *)svgContainerTitle {
	NSString *oldValue = _svgContainerTitle;
	_svgContainerTitle = svgContainerTitle;
	[self updateNSObject:oldValue newValue:svgContainerTitle propertyName:@"svgContainerTitle"];
}

-(void)setSonification:(HISonification *)sonification {
	HISonification *oldValue = _sonification;
	_sonification = sonification;
	[self updateHIObject:oldValue newValue:sonification propertyName:@"sonification"];
}

-(void)setGraphicContainerLabel:(NSString *)graphicContainerLabel {
	NSString *oldValue = _graphicContainerLabel;
	_graphicContainerLabel = graphicContainerLabel;
	[self updateNSObject:oldValue newValue:graphicContainerLabel propertyName:@"graphicContainerLabel"];
}

-(void)setLegend:(HIAccessibilityLegend *)legend {
	HIAccessibilityLegend *oldValue = _legend;
	_legend = legend;
	[self updateHIObject:oldValue newValue:legend propertyName:@"legend"];
}

-(void)setChartContainerLabel:(NSString *)chartContainerLabel {
	NSString *oldValue = _chartContainerLabel;
	_chartContainerLabel = chartContainerLabel;
	[self updateNSObject:oldValue newValue:chartContainerLabel propertyName:@"chartContainerLabel"];
}

-(void)setAxis:(HIAxis *)axis {
	HIAxis *oldValue = _axis;
	_axis = axis;
	[self updateHIObject:oldValue newValue:axis propertyName:@"axis"];
}

@end
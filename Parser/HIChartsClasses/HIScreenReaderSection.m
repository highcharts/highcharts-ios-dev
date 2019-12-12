#import "HIChartsJSONSerializableSubclass.h"
#import "HIScreenReaderSection.h"

@implementation HIScreenReaderSection

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIScreenReaderSection *copyScreenReaderSection = [[HIScreenReaderSection allocWithZone: zone] init];
	copyScreenReaderSection.beforeChartFormatter = [self.beforeChartFormatter copyWithZone: zone];
	copyScreenReaderSection.onViewDataTableClick = [self.onViewDataTableClick copyWithZone: zone];
	copyScreenReaderSection.afterChartFormat = [self.afterChartFormat copyWithZone: zone];
	copyScreenReaderSection.axisRangeDateFormat = [self.axisRangeDateFormat copyWithZone: zone];
	copyScreenReaderSection.beforeChartFormat = [self.beforeChartFormat copyWithZone: zone];
	copyScreenReaderSection.afterChartFormatter = [self.afterChartFormatter copyWithZone: zone];
	copyScreenReaderSection.beforeRegionLabel = [self.beforeRegionLabel copyWithZone: zone];
	copyScreenReaderSection.afterRegionLabel = [self.afterRegionLabel copyWithZone: zone];
	copyScreenReaderSection.endOfChartMarker = [self.endOfChartMarker copyWithZone: zone];
	return copyScreenReaderSection;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.beforeChartFormatter) {
		params[@"beforeChartFormatter"] = [self.beforeChartFormatter getFunction];
	}
	if (self.onViewDataTableClick) {
		params[@"onViewDataTableClick"] = [self.onViewDataTableClick getFunction];
	}
	if (self.afterChartFormat) {
		params[@"afterChartFormat"] = self.afterChartFormat;
	}
	if (self.axisRangeDateFormat) {
		params[@"axisRangeDateFormat"] = self.axisRangeDateFormat;
	}
	if (self.beforeChartFormat) {
		params[@"beforeChartFormat"] = self.beforeChartFormat;
	}
	if (self.afterChartFormatter) {
		params[@"afterChartFormatter"] = [self.afterChartFormatter getFunction];
	}
	if (self.beforeRegionLabel) {
		params[@"beforeRegionLabel"] = self.beforeRegionLabel;
	}
	if (self.afterRegionLabel) {
		params[@"afterRegionLabel"] = self.afterRegionLabel;
	}
	if (self.endOfChartMarker) {
		params[@"endOfChartMarker"] = self.endOfChartMarker;
	}
	return params;
}

# pragma mark - Setters

-(void)setBeforeChartFormatter:(HIFunction *)beforeChartFormatter {
	HIFunction *oldValue = _beforeChartFormatter;
	_beforeChartFormatter = beforeChartFormatter;
	[self updateHIObject:oldValue newValue:beforeChartFormatter propertyName:@"beforeChartFormatter"];
}

-(void)setOnViewDataTableClick:(HIFunction *)onViewDataTableClick {
	HIFunction *oldValue = _onViewDataTableClick;
	_onViewDataTableClick = onViewDataTableClick;
	[self updateHIObject:oldValue newValue:onViewDataTableClick propertyName:@"onViewDataTableClick"];
}

-(void)setAfterChartFormat:(NSString *)afterChartFormat {
	NSString *oldValue = _afterChartFormat;
	_afterChartFormat = afterChartFormat;
	[self updateNSObject:oldValue newValue:afterChartFormat propertyName:@"afterChartFormat"];
}

-(void)setAxisRangeDateFormat:(NSString *)axisRangeDateFormat {
	NSString *oldValue = _axisRangeDateFormat;
	_axisRangeDateFormat = axisRangeDateFormat;
	[self updateNSObject:oldValue newValue:axisRangeDateFormat propertyName:@"axisRangeDateFormat"];
}

-(void)setBeforeChartFormat:(NSString *)beforeChartFormat {
	NSString *oldValue = _beforeChartFormat;
	_beforeChartFormat = beforeChartFormat;
	[self updateNSObject:oldValue newValue:beforeChartFormat propertyName:@"beforeChartFormat"];
}

-(void)setAfterChartFormatter:(HIFunction *)afterChartFormatter {
	HIFunction *oldValue = _afterChartFormatter;
	_afterChartFormatter = afterChartFormatter;
	[self updateHIObject:oldValue newValue:afterChartFormatter propertyName:@"afterChartFormatter"];
}

-(void)setBeforeRegionLabel:(NSString *)beforeRegionLabel {
	NSString *oldValue = _beforeRegionLabel;
	_beforeRegionLabel = beforeRegionLabel;
	[self updateNSObject:oldValue newValue:beforeRegionLabel propertyName:@"beforeRegionLabel"];
}

-(void)setAfterRegionLabel:(NSString *)afterRegionLabel {
	NSString *oldValue = _afterRegionLabel;
	_afterRegionLabel = afterRegionLabel;
	[self updateNSObject:oldValue newValue:afterRegionLabel propertyName:@"afterRegionLabel"];
}

-(void)setEndOfChartMarker:(NSString *)endOfChartMarker {
	NSString *oldValue = _endOfChartMarker;
	_endOfChartMarker = endOfChartMarker;
	[self updateNSObject:oldValue newValue:endOfChartMarker propertyName:@"endOfChartMarker"];
}

@end
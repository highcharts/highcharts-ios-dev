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
	if (self.pointDescriptionThreshold) {
		params[@"pointDescriptionThreshold"] = self.pointDescriptionThreshold;
	}
	if (self.pointDateFormatter) {
		params[@"pointDateFormatter"] = [self.pointDateFormatter getFunction];
	}
	if (self.pointDateFormat) {
		params[@"pointDateFormat"] = self.pointDateFormat;
	}
	if (self.onTableAnchorClick) {
		params[@"onTableAnchorClick"] = [self.onTableAnchorClick getFunction];
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.describeSingleSeries) {
		params[@"describeSingleSeries"] = self.describeSingleSeries;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.seriesDescriptionFormatter) {
		params[@"seriesDescriptionFormatter"] = [self.seriesDescriptionFormatter getFunction];
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

-(void)setPointDescriptionThreshold:(NSNumber *)pointDescriptionThreshold {
	_pointDescriptionThreshold = pointDescriptionThreshold;
	[self updateNSObject:@"pointDescriptionThreshold"];
}

-(void)setPointDateFormatter:(HIFunction *)pointDateFormatter {
	HIFunction *oldValue = _pointDateFormatter;
	if(self.pointDateFormatter) {
		[self removeObserver:self forKeyPath:@"pointDateFormatter.isUpdated"];
	}
	_pointDateFormatter = pointDateFormatter;
	[self updateHIObject:oldValue newValue:pointDateFormatter propertyName:@"pointDateFormatter"];
}

-(void)setPointDateFormat:(NSString *)pointDateFormat {
	_pointDateFormat = pointDateFormat;
	[self updateNSObject:@"pointDateFormat"];
}

-(void)setOnTableAnchorClick:(HIFunction *)onTableAnchorClick {
	HIFunction *oldValue = _onTableAnchorClick;
	if(self.onTableAnchorClick) {
		[self removeObserver:self forKeyPath:@"onTableAnchorClick.isUpdated"];
	}
	_onTableAnchorClick = onTableAnchorClick;
	[self updateHIObject:oldValue newValue:onTableAnchorClick propertyName:@"onTableAnchorClick"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	if(self.pointDescriptionFormatter) {
		[self removeObserver:self forKeyPath:@"pointDescriptionFormatter.isUpdated"];
	}
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

-(void)setDescribeSingleSeries:(NSNumber *)describeSingleSeries {
	_describeSingleSeries = describeSingleSeries;
	[self updateNSObject:@"describeSingleSeries"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setSeriesDescriptionFormatter:(HIFunction *)seriesDescriptionFormatter {
	HIFunction *oldValue = _seriesDescriptionFormatter;
	if(self.seriesDescriptionFormatter) {
		[self removeObserver:self forKeyPath:@"seriesDescriptionFormatter.isUpdated"];
	}
	_seriesDescriptionFormatter = seriesDescriptionFormatter;
	[self updateHIObject:oldValue newValue:seriesDescriptionFormatter propertyName:@"seriesDescriptionFormatter"];
}

@end
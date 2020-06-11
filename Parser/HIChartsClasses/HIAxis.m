#import "HIChartsJSONSerializableSubclass.h"
#import "HIAxis.h"

@implementation HIAxis

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAxis *copyAxis = [[HIAxis allocWithZone: zone] init];
	copyAxis.xAxisDescriptionSingular = [self.xAxisDescriptionSingular copyWithZone: zone];
	copyAxis.timeRangeMinutes = [self.timeRangeMinutes copyWithZone: zone];
	copyAxis.timeRangeHours = [self.timeRangeHours copyWithZone: zone];
	copyAxis.rangeCategories = [self.rangeCategories copyWithZone: zone];
	copyAxis.timeRangeSeconds = [self.timeRangeSeconds copyWithZone: zone];
	copyAxis.yAxisDescriptionPlural = [self.yAxisDescriptionPlural copyWithZone: zone];
	copyAxis.rangeFromTo = [self.rangeFromTo copyWithZone: zone];
	copyAxis.timeRangeDays = [self.timeRangeDays copyWithZone: zone];
	copyAxis.xAxisDescriptionPlural = [self.xAxisDescriptionPlural copyWithZone: zone];
	copyAxis.yAxisDescriptionSingular = [self.yAxisDescriptionSingular copyWithZone: zone];
	return copyAxis;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.xAxisDescriptionSingular) {
		params[@"xAxisDescriptionSingular"] = self.xAxisDescriptionSingular;
	}
	if (self.timeRangeMinutes) {
		params[@"timeRangeMinutes"] = self.timeRangeMinutes;
	}
	if (self.timeRangeHours) {
		params[@"timeRangeHours"] = self.timeRangeHours;
	}
	if (self.rangeCategories) {
		params[@"rangeCategories"] = self.rangeCategories;
	}
	if (self.timeRangeSeconds) {
		params[@"timeRangeSeconds"] = self.timeRangeSeconds;
	}
	if (self.yAxisDescriptionPlural) {
		params[@"yAxisDescriptionPlural"] = self.yAxisDescriptionPlural;
	}
	if (self.rangeFromTo) {
		params[@"rangeFromTo"] = self.rangeFromTo;
	}
	if (self.timeRangeDays) {
		params[@"timeRangeDays"] = self.timeRangeDays;
	}
	if (self.xAxisDescriptionPlural) {
		params[@"xAxisDescriptionPlural"] = self.xAxisDescriptionPlural;
	}
	if (self.yAxisDescriptionSingular) {
		params[@"yAxisDescriptionSingular"] = self.yAxisDescriptionSingular;
	}
	return params;
}

# pragma mark - Setters

-(void)setXAxisDescriptionSingular:(NSString *)xAxisDescriptionSingular {
	NSString *oldValue = _xAxisDescriptionSingular;
	_xAxisDescriptionSingular = xAxisDescriptionSingular;
	[self updateNSObject:oldValue newValue:xAxisDescriptionSingular propertyName:@"xAxisDescriptionSingular"];
}

-(void)setTimeRangeMinutes:(NSString *)timeRangeMinutes {
	NSString *oldValue = _timeRangeMinutes;
	_timeRangeMinutes = timeRangeMinutes;
	[self updateNSObject:oldValue newValue:timeRangeMinutes propertyName:@"timeRangeMinutes"];
}

-(void)setTimeRangeHours:(NSString *)timeRangeHours {
	NSString *oldValue = _timeRangeHours;
	_timeRangeHours = timeRangeHours;
	[self updateNSObject:oldValue newValue:timeRangeHours propertyName:@"timeRangeHours"];
}

-(void)setRangeCategories:(NSString *)rangeCategories {
	NSString *oldValue = _rangeCategories;
	_rangeCategories = rangeCategories;
	[self updateNSObject:oldValue newValue:rangeCategories propertyName:@"rangeCategories"];
}

-(void)setTimeRangeSeconds:(NSString *)timeRangeSeconds {
	NSString *oldValue = _timeRangeSeconds;
	_timeRangeSeconds = timeRangeSeconds;
	[self updateNSObject:oldValue newValue:timeRangeSeconds propertyName:@"timeRangeSeconds"];
}

-(void)setYAxisDescriptionPlural:(NSString *)yAxisDescriptionPlural {
	NSString *oldValue = _yAxisDescriptionPlural;
	_yAxisDescriptionPlural = yAxisDescriptionPlural;
	[self updateNSObject:oldValue newValue:yAxisDescriptionPlural propertyName:@"yAxisDescriptionPlural"];
}

-(void)setRangeFromTo:(NSString *)rangeFromTo {
	NSString *oldValue = _rangeFromTo;
	_rangeFromTo = rangeFromTo;
	[self updateNSObject:oldValue newValue:rangeFromTo propertyName:@"rangeFromTo"];
}

-(void)setTimeRangeDays:(NSString *)timeRangeDays {
	NSString *oldValue = _timeRangeDays;
	_timeRangeDays = timeRangeDays;
	[self updateNSObject:oldValue newValue:timeRangeDays propertyName:@"timeRangeDays"];
}

-(void)setXAxisDescriptionPlural:(NSString *)xAxisDescriptionPlural {
	NSString *oldValue = _xAxisDescriptionPlural;
	_xAxisDescriptionPlural = xAxisDescriptionPlural;
	[self updateNSObject:oldValue newValue:xAxisDescriptionPlural propertyName:@"xAxisDescriptionPlural"];
}

-(void)setYAxisDescriptionSingular:(NSString *)yAxisDescriptionSingular {
	NSString *oldValue = _yAxisDescriptionSingular;
	_yAxisDescriptionSingular = yAxisDescriptionSingular;
	[self updateNSObject:oldValue newValue:yAxisDescriptionSingular propertyName:@"yAxisDescriptionSingular"];
}

@end
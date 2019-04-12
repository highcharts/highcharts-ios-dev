#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotAreaRangeDataLabelsOptionsObject.h"

@implementation HIPlotAreaRangeDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotAreaRangeDataLabelsOptionsObject *copyPlotAreaRangeDataLabelsOptionsObject = [[HIPlotAreaRangeDataLabelsOptionsObject allocWithZone: zone] init];
	copyPlotAreaRangeDataLabelsOptionsObject.xHigh = [self.xHigh copyWithZone: zone];
	copyPlotAreaRangeDataLabelsOptionsObject.xLow = [self.xLow copyWithZone: zone];
	copyPlotAreaRangeDataLabelsOptionsObject.yHigh = [self.yHigh copyWithZone: zone];
	copyPlotAreaRangeDataLabelsOptionsObject.yLow = [self.yLow copyWithZone: zone];
	return copyPlotAreaRangeDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.xHigh) {
		params[@"xHigh"] = self.xHigh;
	}
	if (self.xLow) {
		params[@"xLow"] = self.xLow;
	}
	if (self.yHigh) {
		params[@"yHigh"] = self.yHigh;
	}
	if (self.yLow) {
		params[@"yLow"] = self.yLow;
	}
	return params;
}

# pragma mark - Setters

-(void)setXHigh:(NSNumber *)xHigh {
	NSNumber *oldValue = _xHigh;
	_xHigh = xHigh;
	[self updateNSObject:oldValue newValue:xHigh propertyName:@"xHigh"];
}

-(void)setXLow:(NSNumber *)xLow {
	NSNumber *oldValue = _xLow;
	_xLow = xLow;
	[self updateNSObject:oldValue newValue:xLow propertyName:@"xLow"];
}

-(void)setYHigh:(NSNumber *)yHigh {
	NSNumber *oldValue = _yHigh;
	_yHigh = yHigh;
	[self updateNSObject:oldValue newValue:yHigh propertyName:@"yHigh"];
}

-(void)setYLow:(NSNumber *)yLow {
	NSNumber *oldValue = _yLow;
	_yLow = yLow;
	[self updateNSObject:oldValue newValue:yLow propertyName:@"yLow"];
}

@end
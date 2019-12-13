#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesNavigation.h"

@implementation HISeriesNavigation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesNavigation *copySeriesNavigation = [[HISeriesNavigation allocWithZone: zone] init];
	copySeriesNavigation.skipNullPoints = [self.skipNullPoints copyWithZone: zone];
	copySeriesNavigation.mode = [self.mode copyWithZone: zone];
	copySeriesNavigation.pointNavigationEnabledThreshold = [self.pointNavigationEnabledThreshold copyWithZone: zone];
	return copySeriesNavigation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.skipNullPoints) {
		params[@"skipNullPoints"] = self.skipNullPoints;
	}
	if (self.mode) {
		params[@"mode"] = self.mode;
	}
	if (self.pointNavigationEnabledThreshold) {
		params[@"pointNavigationEnabledThreshold"] = self.pointNavigationEnabledThreshold;
	}
	return params;
}

# pragma mark - Setters

-(void)setSkipNullPoints:(NSNumber *)skipNullPoints {
	NSNumber *oldValue = _skipNullPoints;
	_skipNullPoints = skipNullPoints;
	[self updateNSObject:oldValue newValue:skipNullPoints propertyName:@"skipNullPoints"];
}

-(void)setMode:(NSString *)mode {
	NSString *oldValue = _mode;
	_mode = mode;
	[self updateNSObject:oldValue newValue:mode propertyName:@"mode"];
}

-(void)setPointNavigationEnabledThreshold:(NSNumber *)pointNavigationEnabledThreshold {
	NSNumber *oldValue = _pointNavigationEnabledThreshold;
	_pointNavigationEnabledThreshold = pointNavigationEnabledThreshold;
	[self updateNSObject:oldValue newValue:pointNavigationEnabledThreshold propertyName:@"pointNavigationEnabledThreshold"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIBoost.h"

@implementation HIBoost

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBoost *copyBoost = [[HIBoost allocWithZone: zone] init];
	copyBoost.allowForce = [self.allowForce copyWithZone: zone];
	copyBoost.enabled = [self.enabled copyWithZone: zone];
	copyBoost.seriesThreshold = [self.seriesThreshold copyWithZone: zone];
	copyBoost.usePreallocated = [self.usePreallocated copyWithZone: zone];
	copyBoost.useGPUTranslations = [self.useGPUTranslations copyWithZone: zone];
	copyBoost.debug = [self.debug copyWithZone: zone];
	return copyBoost;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowForce) {
		params[@"allowForce"] = self.allowForce;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.seriesThreshold) {
		params[@"seriesThreshold"] = self.seriesThreshold;
	}
	if (self.usePreallocated) {
		params[@"usePreallocated"] = self.usePreallocated;
	}
	if (self.useGPUTranslations) {
		params[@"useGPUTranslations"] = self.useGPUTranslations;
	}
	if (self.debug) {
		params[@"debug"] = [self.debug getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowForce:(NSNumber *)allowForce {
	NSNumber *oldValue = _allowForce;
	_allowForce = allowForce;
	[self updateNSObject:oldValue newValue:allowForce propertyName:@"allowForce"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setSeriesThreshold:(NSNumber *)seriesThreshold {
	NSNumber *oldValue = _seriesThreshold;
	_seriesThreshold = seriesThreshold;
	[self updateNSObject:oldValue newValue:seriesThreshold propertyName:@"seriesThreshold"];
}

-(void)setUsePreallocated:(NSNumber *)usePreallocated {
	NSNumber *oldValue = _usePreallocated;
	_usePreallocated = usePreallocated;
	[self updateNSObject:oldValue newValue:usePreallocated propertyName:@"usePreallocated"];
}

-(void)setUseGPUTranslations:(NSNumber *)useGPUTranslations {
	NSNumber *oldValue = _useGPUTranslations;
	_useGPUTranslations = useGPUTranslations;
	[self updateNSObject:oldValue newValue:useGPUTranslations propertyName:@"useGPUTranslations"];
}

-(void)setDebug:(HIDebug *)debug {
	HIDebug *oldValue = _debug;
	_debug = debug;
	[self updateHIObject:oldValue newValue:debug propertyName:@"debug"];
}

@end
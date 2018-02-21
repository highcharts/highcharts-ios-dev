#import "HIChartsJSONSerializableSubclass.h"
#import "HIBoost.h"

@implementation HIBoost

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.debug) {
		params[@"debug"] = [self.debug getParams];
	}
	if (self.allowForce) {
		params[@"allowForce"] = self.allowForce;
	}
	if (self.useGPUTranslations) {
		params[@"useGPUTranslations"] = self.useGPUTranslations;
	}
	if (self.seriesThreshold) {
		params[@"seriesThreshold"] = self.seriesThreshold;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setDebug:(HIDebug *)debug {
	HIDebug *oldValue = _debug;
	if(self.debug) {
		[self removeObserver:self forKeyPath:@"debug.isUpdated"];
	}
	_debug = debug;
	[self updateHIObject:oldValue newValue:debug propertyName:@"debug"];
}

-(void)setAllowForce:(NSNumber *)allowForce {
	_allowForce = allowForce;
	[self updateNSObject:@"allowForce"];
}

-(void)setUseGPUTranslations:(NSNumber *)useGPUTranslations {
	_useGPUTranslations = useGPUTranslations;
	[self updateNSObject:@"useGPUTranslations"];
}

-(void)setSeriesThreshold:(NSNumber *)seriesThreshold {
	_seriesThreshold = seriesThreshold;
	[self updateNSObject:@"seriesThreshold"];
}

@end
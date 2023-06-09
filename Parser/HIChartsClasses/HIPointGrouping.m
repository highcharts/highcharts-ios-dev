#import "HIChartsJSONSerializableSubclass.h"
#import "HIPointGrouping.h"

@implementation HIPointGrouping

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPointGrouping *copyPointGrouping = [[HIPointGrouping allocWithZone: zone] init];
	copyPointGrouping.groupTimespan = [self.groupTimespan copyWithZone: zone];
	copyPointGrouping.enabled = [self.enabled copyWithZone: zone];
	copyPointGrouping.algorithm = [self.algorithm copyWithZone: zone];
	copyPointGrouping.prop = [self.prop copyWithZone: zone];
	return copyPointGrouping;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.groupTimespan) {
		params[@"groupTimespan"] = self.groupTimespan;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.algorithm) {
		params[@"algorithm"] = self.algorithm;
	}
	if (self.prop) {
		params[@"prop"] = self.prop;
	}
	return params;
}

# pragma mark - Setters

-(void)setGroupTimespan:(NSNumber *)groupTimespan {
	NSNumber *oldValue = _groupTimespan;
	_groupTimespan = groupTimespan;
	[self updateNSObject:oldValue newValue:groupTimespan propertyName:@"groupTimespan"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setAlgorithm:(NSString *)algorithm {
	NSString *oldValue = _algorithm;
	_algorithm = algorithm;
	[self updateNSObject:oldValue newValue:algorithm propertyName:@"algorithm"];
}

-(void)setProp:(NSString *)prop {
	NSString *oldValue = _prop;
	_prop = prop;
	[self updateNSObject:oldValue newValue:prop propertyName:@"prop"];
}

@end
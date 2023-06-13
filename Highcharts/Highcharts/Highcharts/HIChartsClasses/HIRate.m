#import "HIChartsJSONSerializableSubclass.h"
#import "HIRate.h"

@implementation HIRate

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRate *copyRate = [[HIRate allocWithZone: zone] init];
	copyRate.mapFunction = [self.mapFunction copyWithZone: zone];
	copyRate.min = [self.min copyWithZone: zone];
	copyRate.max = [self.max copyWithZone: zone];
	copyRate.within = [self.within copyWithZone: zone];
	copyRate.value = [self.value copyWithZone: zone];
	copyRate.mapTo = [self.mapTo copyWithZone: zone];
	return copyRate;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mapFunction) {
		params[@"mapFunction"] = self.mapFunction;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.within) {
		params[@"within"] = self.within;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.mapTo) {
		params[@"mapTo"] = self.mapTo;
	}
	return params;
}

# pragma mark - Setters

-(void)setMapFunction:(NSString *)mapFunction {
	NSString *oldValue = _mapFunction;
	_mapFunction = mapFunction;
	[self updateNSObject:oldValue newValue:mapFunction propertyName:@"mapFunction"];
}

-(void)setMin:(NSNumber *)min {
	NSNumber *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

-(void)setWithin:(NSString *)within {
	NSString *oldValue = _within;
	_within = within;
	[self updateNSObject:oldValue newValue:within propertyName:@"within"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

-(void)setMapTo:(NSString *)mapTo {
	NSString *oldValue = _mapTo;
	_mapTo = mapTo;
	[self updateNSObject:oldValue newValue:mapTo propertyName:@"mapTo"];
}

@end
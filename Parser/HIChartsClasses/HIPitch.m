#import "HIChartsJSONSerializableSubclass.h"
#import "HIPitch.h"

@implementation HIPitch

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPitch *copyPitch = [[HIPitch allocWithZone: zone] init];
	copyPitch.within = [self.within copyWithZone: zone];
	copyPitch.max = [self.max copyWithZone: zone];
	copyPitch.scale = [self.scale copyWithZone: zone];
	copyPitch.mapTo = [self.mapTo copyWithZone: zone];
	copyPitch.min = [self.min copyWithZone: zone];
	copyPitch.mapFunction = [self.mapFunction copyWithZone: zone];
	copyPitch.value = [self.value copyWithZone: zone];
	return copyPitch;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.within) {
		params[@"within"] = self.within;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.scale) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.scale) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"scale"] = array;
	}
	if (self.mapTo) {
		params[@"mapTo"] = self.mapTo;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.mapFunction) {
		params[@"mapFunction"] = self.mapFunction;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setWithin:(NSString *)within {
	NSString *oldValue = _within;
	_within = within;
	[self updateNSObject:oldValue newValue:within propertyName:@"within"];
}

-(void)setMax:(NSString *)max {
	NSString *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

-(void)setScale:(NSArray<NSNumber *> *)scale {
	NSArray<NSNumber *> *oldValue = _scale;
	_scale = scale;
	[self updateArrayObject:oldValue newValue:scale propertyName:@"scale"];
}

-(void)setMapTo:(NSString *)mapTo {
	NSString *oldValue = _mapTo;
	_mapTo = mapTo;
	[self updateNSObject:oldValue newValue:mapTo propertyName:@"mapTo"];
}

-(void)setMin:(NSString *)min {
	NSString *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

-(void)setMapFunction:(NSString *)mapFunction {
	NSString *oldValue = _mapFunction;
	_mapFunction = mapFunction;
	[self updateNSObject:oldValue newValue:mapFunction propertyName:@"mapFunction"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

@end
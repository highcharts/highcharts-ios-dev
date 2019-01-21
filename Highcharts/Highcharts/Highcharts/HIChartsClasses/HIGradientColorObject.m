#import "HIChartsJSONSerializableSubclass.h"
#import "HIGradientColorObject.h"

@implementation HIGradientColorObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGradientColorObject *copyGradientColorObject = [[HIGradientColorObject allocWithZone: zone] init];
	copyGradientColorObject.linearGradient = [self.linearGradient copyWithZone: zone];
	copyGradientColorObject.radialGradient = [self.radialGradient copyWithZone: zone];
	copyGradientColorObject.stops = [self.stops copyWithZone: zone];
	return copyGradientColorObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.linearGradient) {
		params[@"linearGradient"] = self.linearGradient;
	}
	if (self.radialGradient) {
		params[@"radialGradient"] = self.radialGradient;
	}
	if (self.stops) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.stops) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"stops"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setLinearGradient:(id)linearGradient {
	id oldValue = _linearGradient;
	_linearGradient = linearGradient;
	[self updateNSObject:oldValue newValue:linearGradient propertyName:@"linearGradient"];
}

-(void)setRadialGradient:(id)radialGradient {
	id oldValue = _radialGradient;
	_radialGradient = radialGradient;
	[self updateNSObject:oldValue newValue:radialGradient propertyName:@"radialGradient"];
}

-(void)setStops:(NSArray<NSArray *> *)stops {
	NSArray<NSArray *> *oldValue = _stops;
	_stops = stops;
	[self updateArrayObject:oldValue newValue:stops propertyName:@"stops"];
}

@end
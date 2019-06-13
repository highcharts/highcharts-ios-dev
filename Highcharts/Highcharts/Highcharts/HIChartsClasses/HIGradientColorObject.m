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
		params[@"linearGradient"] = [self.linearGradient getParams];
	}
	if (self.radialGradient) {
		params[@"radialGradient"] = [self.radialGradient getParams];
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

-(void)setLinearGradient:(HILinearGradientColorObject *)linearGradient {
	HILinearGradientColorObject *oldValue = _linearGradient;
	_linearGradient = linearGradient;
	[self updateHIObject:oldValue newValue:linearGradient propertyName:@"linearGradient"];
}

-(void)setRadialGradient:(HIRadialGradientColorObject *)radialGradient {
	HIRadialGradientColorObject *oldValue = _radialGradient;
	_radialGradient = radialGradient;
	[self updateHIObject:oldValue newValue:radialGradient propertyName:@"radialGradient"];
}

-(void)setStops:(NSArray<NSArray *> *)stops {
	NSArray<NSArray *> *oldValue = _stops;
	_stops = stops;
	[self updateArrayObject:oldValue newValue:stops propertyName:@"stops"];
}

@end
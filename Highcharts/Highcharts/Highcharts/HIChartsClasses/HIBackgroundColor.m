#import "HIChartsJSONSerializableSubclass.h"
#import "HIBackgroundColor.h"

@implementation HIBackgroundColor

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.linearGradient) {
		params[@"linearGradient"] = [self.linearGradient getParams];
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

-(void)setLinearGradient:(HILinearGradient *)linearGradient {
	HILinearGradient *oldValue = _linearGradient;
	if(self.linearGradient) {
		[self removeObserver:self forKeyPath:@"linearGradient.isUpdated"];
	}
	_linearGradient = linearGradient;
	[self updateHIObject:oldValue newValue:linearGradient propertyName:@"linearGradient"];
}

-(void)setStops:(NSArray<NSArray *> *)stops {
	NSArray<NSArray *> *oldValue = _stops;
	_stops = stops;
	[self updateArrayObject:oldValue newValue:stops propertyName:@"stops"];
}

@end
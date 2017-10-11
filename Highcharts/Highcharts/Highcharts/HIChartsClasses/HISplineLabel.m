#import "HISplineLabel.h"

@implementation HISplineLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minFontSize) {
		params[@"minFontSize"] = self.minFontSize;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.onArea) {
		params[@"onArea"] = self.onArea;
	}
	if (self.connectorNeighbourDistance) {
		params[@"connectorNeighbourDistance"] = self.connectorNeighbourDistance;
	}
	if (self.boxesToAvoid) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.boxesToAvoid) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"boxesToAvoid"] = array;
	}
	if (self.connectorAllowed) {
		params[@"connectorAllowed"] = self.connectorAllowed;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.maxFontSize) {
		params[@"maxFontSize"] = self.maxFontSize;
	}
	return params;
}

@end
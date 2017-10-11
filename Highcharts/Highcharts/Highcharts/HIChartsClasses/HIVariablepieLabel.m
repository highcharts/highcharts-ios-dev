#import "HIVariablepieLabel.h"

@implementation HIVariablepieLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.maxFontSize) {
		params[@"maxFontSize"] = self.maxFontSize;
	}
	if (self.onArea) {
		params[@"onArea"] = self.onArea;
	}
	if (self.connectorAllowed) {
		params[@"connectorAllowed"] = self.connectorAllowed;
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
	if (self.minFontSize) {
		params[@"minFontSize"] = self.minFontSize;
	}
	if (self.connectorNeighbourDistance) {
		params[@"connectorNeighbourDistance"] = self.connectorNeighbourDistance;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

@end
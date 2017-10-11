#import "HIErrorbarLabel.h"

@implementation HIErrorbarLabel

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.connectorNeighbourDistance) {
		params[@"connectorNeighbourDistance"] = self.connectorNeighbourDistance;
	}
	if (self.minFontSize) {
		params[@"minFontSize"] = self.minFontSize;
	}
	if (self.maxFontSize) {
		params[@"maxFontSize"] = self.maxFontSize;
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
	if (self.onArea) {
		params[@"onArea"] = self.onArea;
	}
	return params;
}

@end
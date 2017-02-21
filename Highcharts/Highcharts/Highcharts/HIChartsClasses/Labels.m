#import "Labels.h"

@implementation Labels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.items) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.items) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"items"] = array;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	return params;
}

@end
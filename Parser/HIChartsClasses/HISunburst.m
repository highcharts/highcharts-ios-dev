#import "HISunburst.h"

@implementation HISunburst

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"sunburst";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.rootId) {
		params[@"rootId"] = self.rootId;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.levels) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.levels) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"levels"] = array;
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.allowDrillToNode) {
		params[@"allowDrillToNode"] = self.allowDrillToNode;
	}
	return params;
}

@end
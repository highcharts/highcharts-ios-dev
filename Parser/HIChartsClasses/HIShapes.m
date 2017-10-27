#import "HIShapes.h"

@implementation HIShapes

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.markerEnd) {
		params[@"markerEnd"] = self.markerEnd;
	}
	if (self.points) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.points) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"points"] = array;
	}
	if (self.markerStart) {
		params[@"markerStart"] = self.markerStart;
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	return params;
}

@end
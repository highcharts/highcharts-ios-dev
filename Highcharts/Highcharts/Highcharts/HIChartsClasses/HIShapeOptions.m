#import "HIShapeOptions.h"

@implementation HIShapeOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

@end
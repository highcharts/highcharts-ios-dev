#import "HISankey.h"

@implementation HISankey

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"sankey";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.curveFactor) {
		params[@"curveFactor"] = self.curveFactor;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	if (self.nodeWidth) {
		params[@"nodeWidth"] = self.nodeWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.nodePadding) {
		params[@"nodePadding"] = self.nodePadding;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	return params;
}

@end
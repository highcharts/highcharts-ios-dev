#import "HIFunnel.h"

@implementation HIFunnel

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"funnel";
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
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
	}
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	return params;
}

@end
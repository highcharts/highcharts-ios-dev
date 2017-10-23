#import "HIVariablepie.h"

@implementation HIVariablepie

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"variablepie";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.maxPointSize) {
		params[@"maxPointSize"] = self.maxPointSize;
	}
	if (self.size) {
		params[@"size"] = self.size;
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.minPointSize) {
		params[@"minPointSize"] = self.minPointSize;
	}
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	return params;
}

@end
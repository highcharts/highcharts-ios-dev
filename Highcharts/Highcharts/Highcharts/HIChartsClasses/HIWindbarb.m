#import "HIWindbarb.h"

@implementation HIWindbarb

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"windbarb";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.yOffset) {
		params[@"yOffset"] = self.yOffset;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.vectorLength) {
		params[@"vectorLength"] = self.vectorLength;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.onSeries) {
		params[@"onSeries"] = self.onSeries;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	return params;
}

@end
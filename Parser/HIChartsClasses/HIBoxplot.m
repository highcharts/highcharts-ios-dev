#import "HIBoxplot.h"

@implementation HIBoxplot

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"boxplot";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.stemDashStyle) {
		params[@"stemDashStyle"] = self.stemDashStyle;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.stemColor) {
		params[@"stemColor"] = [self.stemColor getData];
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.medianColor) {
		params[@"medianColor"] = [self.medianColor getData];
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.whiskerLength) {
		params[@"whiskerLength"] = self.whiskerLength;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.whiskerColor) {
		params[@"whiskerColor"] = [self.whiskerColor getData];
	}
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.medianWidth) {
		params[@"medianWidth"] = self.medianWidth;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	return params;
}

@end
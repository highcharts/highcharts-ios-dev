#import "HIErrorbar.h"

@implementation HIErrorbar

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"errorbar";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.whiskerColor) {
		params[@"whiskerColor"] = [self.whiskerColor getData];
	}
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.medianColor) {
		params[@"medianColor"] = [self.medianColor getData];
	}
	if (self.stemColor) {
		params[@"stemColor"] = [self.stemColor getData];
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.medianWidth) {
		params[@"medianWidth"] = self.medianWidth;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.whiskerLength) {
		params[@"whiskerLength"] = self.whiskerLength;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.stemDashStyle) {
		params[@"stemDashStyle"] = self.stemDashStyle;
	}
	return params;
}

@end
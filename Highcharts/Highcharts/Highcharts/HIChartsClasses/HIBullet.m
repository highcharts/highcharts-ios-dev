#import "HIBullet.h"

@implementation HIBullet

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bullet";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.targetOptions) {
		params[@"targetOptions"] = [self.targetOptions getParams];
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	return params;
}

@end
#import "HIXrange.h"

@implementation HIXrange

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"xrange";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.partialFill) {
		params[@"partialFill"] = [self.partialFill getParams];
	}
	return params;
}

@end
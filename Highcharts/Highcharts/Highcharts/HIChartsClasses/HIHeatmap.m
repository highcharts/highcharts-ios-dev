#import "HIHeatmap.h"

@implementation HIHeatmap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"heatmap";
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
	if (self.rowsize) {
		params[@"rowsize"] = self.rowsize;
	}
	if (self.nullColor) {
		params[@"nullColor"] = [self.nullColor getData];
	}
	if (self.colsize) {
		params[@"colsize"] = self.colsize;
	}
	return params;
}

@end
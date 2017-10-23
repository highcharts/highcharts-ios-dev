#import "HITilemap.h"

@implementation HITilemap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"tilemap";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colsize) {
		params[@"colsize"] = self.colsize;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.rowsize) {
		params[@"rowsize"] = self.rowsize;
	}
	if (self.nullColor) {
		params[@"nullColor"] = [self.nullColor getData];
	}
	if (self.tileShape) {
		params[@"tileShape"] = self.tileShape;
	}
	return params;
}

@end
#import "HISolidgauge.h"

@implementation HISolidgauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"solidgauge";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.rounded) {
		params[@"rounded"] = self.rounded;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	return params;
}

@end
#import "YAxisEvents.h"

@implementation YAxisEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.setExtremes) {
		params[@"setExtremes"] = self.setExtremes;
	}
	if (self.afterSetExtremes) {
		params[@"afterSetExtremes"] = self.afterSetExtremes;
	}
	if (self.pointBreak) {
		params[@"pointBreak"] = self.pointBreak;
	}
	if (self.afterBreaks) {
		params[@"afterBreaks"] = self.afterBreaks;
	}
	if (self.pointInBreak) {
		params[@"pointInBreak"] = self.pointInBreak;
	}
	return params;
}

@end
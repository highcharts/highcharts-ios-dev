#import "HIZAxisEvents.h"

@implementation HIZAxisEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.afterSetExtremes) {
		params[@"afterSetExtremes"] = self.afterSetExtremes;
	}
	if (self.pointBreak) {
		params[@"pointBreak"] = self.pointBreak;
	}
	if (self.pointInBreak) {
		params[@"pointInBreak"] = self.pointInBreak;
	}
	if (self.afterBreaks) {
		params[@"afterBreaks"] = self.afterBreaks;
	}
	if (self.setExtremes) {
		params[@"setExtremes"] = self.setExtremes;
	}
	return params;
}

@end
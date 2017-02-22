#import "HIXAxisEvents.h"

@implementation HIXAxisEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.pointInBreak) {
		params[@"pointInBreak"] = self.pointInBreak;
	}
	if (self.setExtremes) {
		params[@"setExtremes"] = self.setExtremes;
	}
	if (self.afterSetExtremes) {
		params[@"afterSetExtremes"] = self.afterSetExtremes;
	}
	if (self.afterBreaks) {
		params[@"afterBreaks"] = self.afterBreaks;
	}
	if (self.pointBreak) {
		params[@"pointBreak"] = self.pointBreak;
	}
	return params;
}

@end
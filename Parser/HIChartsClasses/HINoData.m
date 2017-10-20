#import "HINoData.h"

@implementation HINoData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.attr) {
		params[@"attr"] = self.attr;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

@end
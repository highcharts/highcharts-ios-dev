#import "HILegendTitle.h"

@implementation HILegendTitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	return params;
}

@end
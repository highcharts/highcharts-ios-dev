#import "HILabelsItems.h"

@implementation HILabelsItems

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.html) {
		params[@"html"] = self.html;
	}
	return params;
}

@end
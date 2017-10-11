#import "HIWordcloudStyle.h"

@implementation HIWordcloudStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontFamily) {
		params[@"fontFamily"] = self.fontFamily;
	}
	return params;
}

@end
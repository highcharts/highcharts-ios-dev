#import "HIDrilldownDrillUpButton.h"

@implementation HIDrilldownDrillUpButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.theme) {
		params[@"theme"] = self.theme;
	}
	if (self.relativeTo) {
		params[@"relativeTo"] = self.relativeTo;
	}
	return params;
}

@end
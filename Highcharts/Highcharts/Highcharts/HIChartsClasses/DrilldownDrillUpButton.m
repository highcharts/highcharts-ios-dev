#import "DrilldownDrillUpButton.h"

@implementation DrilldownDrillUpButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.theme) {
		params[@"theme"] = self.theme;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.relativeTo) {
		params[@"relativeTo"] = self.relativeTo;
	}
	return params;
}

@end
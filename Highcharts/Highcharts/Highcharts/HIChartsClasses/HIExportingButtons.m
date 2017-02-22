#import "HIExportingButtons.h"

@implementation HIExportingButtons

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.contextButton) {
		params[@"contextButton"] = [self.contextButton getParams];
	}
	return params;
}

@end
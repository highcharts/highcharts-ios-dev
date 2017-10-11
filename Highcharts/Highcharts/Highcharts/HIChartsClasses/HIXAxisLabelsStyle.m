#import "HIXAxisLabelsStyle.h"

@implementation HIXAxisLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	return params;
}

@end
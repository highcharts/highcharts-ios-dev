#import "HIActiveAxisLabelStyle.h"

@implementation HIActiveAxisLabelStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.textDecoration) {
		params[@"textDecoration"] = self.textDecoration;
	}
	return params;
}

@end
#import "HIActiveDataLabelStyle.h"

@implementation HIActiveDataLabelStyle

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
	if (self.textDecoration) {
		params[@"textDecoration"] = self.textDecoration;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	return params;
}

@end
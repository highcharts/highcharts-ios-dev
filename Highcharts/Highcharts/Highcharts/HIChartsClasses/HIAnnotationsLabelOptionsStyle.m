#import "HIAnnotationsLabelOptionsStyle.h"

@implementation HIAnnotationsLabelOptionsStyle

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
	if (self.fontWeigth) {
		params[@"fontWeigth"] = self.fontWeigth;
	}
	return params;
}

@end
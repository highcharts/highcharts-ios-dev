#import "HIAnnotationsLabelsStyle.h"

@implementation HIAnnotationsLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontWeigth) {
		params[@"fontWeigth"] = self.fontWeigth;
	}
	return params;
}

@end
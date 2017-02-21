#import "XAxisCrosshair.h"

@implementation XAxisCrosshair

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	return params;
}

@end
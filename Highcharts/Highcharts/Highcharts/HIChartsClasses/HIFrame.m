#import "HIFrame.h"

@implementation HIFrame

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.right) {
		params[@"right"] = [self.right getParams];
	}
	if (self.top) {
		params[@"top"] = [self.top getParams];
	}
	if (self.back) {
		params[@"back"] = [self.back getParams];
	}
	if (self.side) {
		params[@"side"] = [self.side getParams];
	}
	if (self.front) {
		params[@"front"] = [self.front getParams];
	}
	if (self.left) {
		params[@"left"] = [self.left getParams];
	}
	if (self.bottom) {
		params[@"bottom"] = [self.bottom getParams];
	}
	return params;
}

@end
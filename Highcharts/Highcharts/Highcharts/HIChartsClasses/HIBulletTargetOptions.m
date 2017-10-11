#import "HIBulletTargetOptions.h"

@implementation HIBulletTargetOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	return params;
}

@end
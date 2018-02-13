#import "HIChartsJSONSerializableSubclass.h"
#import "HISpline.h"

@implementation HISpline

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"spline";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end
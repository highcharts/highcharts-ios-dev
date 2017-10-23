#import "HIScatter3d.h"

@implementation HIScatter3d

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"scatter3d";
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
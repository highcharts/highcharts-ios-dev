#import "HIChartsJSONSerializableSubclass.h"
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

-(id)copyWithZone:(NSZone *)zone {
	HIScatter3d *copyScatter3d = [[HIScatter3d allocWithZone: zone] init];
	return copyScatter3d;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end
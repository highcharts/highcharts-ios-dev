#import "HIChartsJSONSerializableSubclass.h"
#import "HIScatter.h"

@implementation HIScatter

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"scatter";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	HIScatter *copyScatter = [[HIScatter allocWithZone: zone] init];
	return copyScatter;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end
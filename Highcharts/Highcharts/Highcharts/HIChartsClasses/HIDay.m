#import "HIChartsJSONSerializableSubclass.h"
#import "HIDay.h"

@implementation HIDay

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDay *copyDay = [[HIDay allocWithZone: zone] init];
	copyDay.main = [self.main copyWithZone: zone];
	return copyDay;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.main) {
		params[@"main"] = self.main;
	}
	return params;
}

# pragma mark - Setters

-(void)setMain:(NSString *)main {
	_main = main;
	[self updateNSObject:@"main"];
}

@end
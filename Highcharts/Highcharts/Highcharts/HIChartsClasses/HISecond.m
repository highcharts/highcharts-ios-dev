#import "HIChartsJSONSerializableSubclass.h"
#import "HISecond.h"

@implementation HISecond

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISecond *copySecond = [[HISecond allocWithZone: zone] init];
	copySecond.range = [self.range copyWithZone: zone];
	copySecond.main = [self.main copyWithZone: zone];
	return copySecond;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.range) {
		params[@"range"] = self.range;
	}
	if (self.main) {
		params[@"main"] = self.main;
	}
	return params;
}

# pragma mark - Setters

-(void)setRange:(NSNumber *)range {
	_range = range;
	[self updateNSObject:@"range"];
}

-(void)setMain:(NSString *)main {
	_main = main;
	[self updateNSObject:@"main"];
}

@end
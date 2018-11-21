#import "HIChartsJSONSerializableSubclass.h"
#import "HIMillisecond.h"

@implementation HIMillisecond

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMillisecond *copyMillisecond = [[HIMillisecond allocWithZone: zone] init];
	copyMillisecond.range = [self.range copyWithZone: zone];
	copyMillisecond.main = [self.main copyWithZone: zone];
	return copyMillisecond;
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
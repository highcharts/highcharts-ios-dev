#import "HIChartsJSONSerializableSubclass.h"
#import "HIMinute.h"

@implementation HIMinute

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMinute *copyMinute = [[HIMinute allocWithZone: zone] init];
	copyMinute.range = [self.range copyWithZone: zone];
	copyMinute.main = [self.main copyWithZone: zone];
	return copyMinute;
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
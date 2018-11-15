#import "HIChartsJSONSerializableSubclass.h"
#import "HIHour.h"

@implementation HIHour

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHour *copyHour = [[HIHour allocWithZone: zone] init];
	copyHour.range = [self.range copyWithZone: zone];
	copyHour.main = [self.main copyWithZone: zone];
	return copyHour;
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
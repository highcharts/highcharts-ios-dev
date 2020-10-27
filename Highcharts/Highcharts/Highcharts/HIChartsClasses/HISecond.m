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
	NSNumber *oldValue = _range;
	_range = range;
	[self updateNSObject:oldValue newValue:range propertyName:@"range"];
}

-(void)setMain:(NSString *)main {
	NSString *oldValue = _main;
	_main = main;
	[self updateNSObject:oldValue newValue:main propertyName:@"main"];
}

@end
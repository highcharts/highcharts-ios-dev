#import "HIChartsJSONSerializableSubclass.h"
#import "HIMonth.h"

@implementation HIMonth

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMonth *copyMonth = [[HIMonth allocWithZone: zone] init];
	copyMonth.main = [self.main copyWithZone: zone];
	return copyMonth;
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
	NSString *oldValue = _main;
	_main = main;
	[self updateNSObject:oldValue newValue:main propertyName:@"main"];
}

@end
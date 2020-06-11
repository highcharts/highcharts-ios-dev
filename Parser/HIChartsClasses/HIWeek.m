#import "HIChartsJSONSerializableSubclass.h"
#import "HIWeek.h"

@implementation HIWeek

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIWeek *copyWeek = [[HIWeek allocWithZone: zone] init];
	copyWeek.main = [self.main copyWithZone: zone];
	return copyWeek;
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
#import "HIChartsJSONSerializableSubclass.h"
#import "HIYear.h"

@implementation HIYear

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIYear *copyYear = [[HIYear allocWithZone: zone] init];
	copyYear.main = [self.main copyWithZone: zone];
	return copyYear;
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
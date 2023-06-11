#import "HIChartsJSONSerializableSubclass.h"
#import "HIPaths.h"

@implementation HIPaths

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPaths *copyPaths = [[HIPaths allocWithZone: zone] init];
	copyPaths.definition = [self.definition copyWithZone: zone];
	copyPaths.max = [self.max copyWithZone: zone];
	return copyPaths;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	return params;
}

# pragma mark - Setters

-(void)setDefinition:(NSString *)definition {
	NSString *oldValue = _definition;
	_definition = definition;
	[self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

@end
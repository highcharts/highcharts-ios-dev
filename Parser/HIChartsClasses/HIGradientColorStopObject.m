#import "HIChartsJSONSerializableSubclass.h"
#import "HIGradientColorStopObject.h"

@implementation HIGradientColorStopObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGradientColorStopObject *copyGradientColorStopObject = [[HIGradientColorStopObject allocWithZone: zone] init];
	copyGradientColorStopObject.0 = [self.0 copyWithZone: zone];
	copyGradientColorStopObject.1 = [self.1 copyWithZone: zone];
	return copyGradientColorStopObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.0) {
		params[@"0"] = self.0;
	}
	if (self.1) {
		params[@"1"] = self.1;
	}
	return params;
}

# pragma mark - Setters

-(void)set0:(NSNumber *)0 {
	NSNumber *oldValue = _0;
	_0 = 0;
	[self updateNSObject:oldValue newValue:0 propertyName:@"0"];
}

-(void)set1:(NSString *)1 {
	NSString *oldValue = _1;
	_1 = 1;
	[self updateNSObject:oldValue newValue:1 propertyName:@"1"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIGradientColorStopObject.h"

@implementation HIGradientColorStopObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGradientColorStopObject *copyGradientColorStopObject = [[HIGradientColorStopObject allocWithZone: zone] init];
	copyGradientColorStopObject.zero = [self.zero copyWithZone: zone];
	copyGradientColorStopObject.one = [self.one copyWithZone: zone];
	return copyGradientColorStopObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zero) {
		params[@"0"] = self.zero;
	}
	if (self.one) {
		params[@"1"] = self.one;
	}
	return params;
}

# pragma mark - Setters

-(void)setZero:(NSNumber *)zero {
	NSNumber *oldValue = _zero;
	_zero = zero;
	[self updateNSObject:oldValue newValue:zero propertyName:@"zero"];
}

-(void)setOne:(NSString *)one {
	NSString *oldValue = _one;
	_one = one;
	[self updateNSObject:oldValue newValue:one propertyName:@"one"];
}

@end

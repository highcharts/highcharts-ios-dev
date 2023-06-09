#import "HIChartsJSONSerializableSubclass.h"
#import "HILowpass.h"

@implementation HILowpass

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILowpass *copyLowpass = [[HILowpass allocWithZone: zone] init];
	copyLowpass.resonance = [self.resonance copyWithZone: zone];
	copyLowpass.frequency = [self.frequency copyWithZone: zone];
	return copyLowpass;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.resonance) {
		params[@"resonance"] = [self.resonance getParams];
	}
	if (self.frequency) {
		params[@"frequency"] = [self.frequency getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setResonance:(HIResonance *)resonance {
	HIResonance *oldValue = _resonance;
	_resonance = resonance;
	[self updateHIObject:oldValue newValue:resonance propertyName:@"resonance"];
}

-(void)setFrequency:(HIFrequency *)frequency {
	HIFrequency *oldValue = _frequency;
	_frequency = frequency;
	[self updateHIObject:oldValue newValue:frequency propertyName:@"frequency"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIHighpass.h"

@implementation HIHighpass

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHighpass *copyHighpass = [[HIHighpass allocWithZone: zone] init];
	copyHighpass.resonance = [self.resonance copyWithZone: zone];
	copyHighpass.frequency = [self.frequency copyWithZone: zone];
	return copyHighpass;
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
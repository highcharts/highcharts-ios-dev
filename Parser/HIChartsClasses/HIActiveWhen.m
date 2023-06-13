#import "HIChartsJSONSerializableSubclass.h"
#import "HIActiveWhen.h"

@implementation HIActiveWhen

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIActiveWhen *copyActiveWhen = [[HIActiveWhen allocWithZone: zone] init];
	copyActiveWhen.crossingDown = [self.crossingDown copyWithZone: zone];
	copyActiveWhen.max = [self.max copyWithZone: zone];
	copyActiveWhen.prop = [self.prop copyWithZone: zone];
	copyActiveWhen.crossingUp = [self.crossingUp copyWithZone: zone];
	copyActiveWhen.min = [self.min copyWithZone: zone];
	return copyActiveWhen;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.crossingDown) {
		params[@"crossingDown"] = self.crossingDown;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.prop) {
		params[@"prop"] = self.prop;
	}
	if (self.crossingUp) {
		params[@"crossingUp"] = self.crossingUp;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	return params;
}

# pragma mark - Setters

-(void)setCrossingDown:(NSNumber *)crossingDown {
	NSNumber *oldValue = _crossingDown;
	_crossingDown = crossingDown;
	[self updateNSObject:oldValue newValue:crossingDown propertyName:@"crossingDown"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

-(void)setProp:(NSString *)prop {
	NSString *oldValue = _prop;
	_prop = prop;
	[self updateNSObject:oldValue newValue:prop propertyName:@"prop"];
}

-(void)setCrossingUp:(NSNumber *)crossingUp {
	NSNumber *oldValue = _crossingUp;
	_crossingUp = crossingUp;
	[self updateNSObject:oldValue newValue:crossingUp propertyName:@"crossingUp"];
}

-(void)setMin:(NSNumber *)min {
	NSNumber *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnimationOptionsObject.h"

@implementation HIAnimationOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnimationOptionsObject *copyAnimationOptionsObject = [[HIAnimationOptionsObject allocWithZone: zone] init];
	copyAnimationOptionsObject.duration = [self.duration copyWithZone: zone];
	copyAnimationOptionsObject.easing = [self.easing copyWithZone: zone];
	copyAnimationOptionsObject.complete = [self.complete copyWithZone: zone];
	copyAnimationOptionsObject.step = [self.step copyWithZone: zone];
	return copyAnimationOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.duration) {
		params[@"duration"] = self.duration;
	}
	if (self.easing) {
		params[@"easing"] = self.easing;
	}
	if (self.complete) {
		params[@"complete"] = [self.complete getFunction];
	}
	if (self.step) {
		params[@"step"] = [self.step getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setDuration:(NSNumber *)duration {
	NSNumber *oldValue = _duration;
	_duration = duration;
	[self updateNSObject:oldValue newValue:duration propertyName:@"duration"];
}

-(void)setEasing:(NSString *)easing {
	NSString *oldValue = _easing;
	_easing = easing;
	[self updateNSObject:oldValue newValue:easing propertyName:@"easing"];
}

-(void)setComplete:(HIFunction *)complete {
	HIFunction *oldValue = _complete;
	_complete = complete;
	[self updateHIObject:oldValue newValue:complete propertyName:@"complete"];
}

-(void)setStep:(HIFunction *)step {
	HIFunction *oldValue = _step;
	_step = step;
	[self updateHIObject:oldValue newValue:step propertyName:@"step"];
}

@end
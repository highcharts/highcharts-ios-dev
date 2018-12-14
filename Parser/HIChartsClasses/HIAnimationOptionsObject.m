#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnimationOptionsObject.h"

@implementation HIAnimationOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnimationOptionsObject *copyAnimationOptionsObject = [[HIAnimationOptionsObject allocWithZone: zone] init];
	copyAnimationOptionsObject.complete = [self.complete copyWithZone: zone];
	copyAnimationOptionsObject.duration = [self.duration copyWithZone: zone];
	copyAnimationOptionsObject.easing = [self.easing copyWithZone: zone];
	copyAnimationOptionsObject.step = [self.step copyWithZone: zone];
	return copyAnimationOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.complete) {
		params[@"complete"] = [self.complete getFunction];
	}
	if (self.duration) {
		params[@"duration"] = self.duration;
	}
	if (self.easing) {
		params[@"easing"] = self.easing;
	}
	if (self.step) {
		params[@"step"] = [self.step getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setComplete:(HIFunction *)complete {
	HIFunction *oldValue = _complete;
	if(self.complete) {
		[self removeObserver:self forKeyPath:@"complete.isUpdated"];
	}
	_complete = complete;
	[self updateHIObject:oldValue newValue:complete propertyName:@"complete"];
}

-(void)setDuration:(NSNumber *)duration {
	_duration = duration;
	[self updateNSObject:@"duration"];
}

-(void)setEasing:(NSString *)easing {
	_easing = easing;
	[self updateNSObject:@"easing"];
}

-(void)setStep:(HIFunction *)step {
	HIFunction *oldValue = _step;
	if(self.step) {
		[self removeObserver:self forKeyPath:@"step.isUpdated"];
	}
	_step = step;
	[self updateHIObject:oldValue newValue:step propertyName:@"step"];
}

@end
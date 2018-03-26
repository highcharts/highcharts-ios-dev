#import "HIChartsJSONSerializableSubclass.h"
#import "HIGauge.h"

@implementation HIGauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"gauge";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.dial) {
		params[@"dial"] = [self.dial getParams];
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.pivot) {
		params[@"pivot"] = [self.pivot getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setDial:(HIDial *)dial {
	HIDial *oldValue = _dial;
	if(self.dial) {
		[self removeObserver:self forKeyPath:@"dial.isUpdated"];
	}
	_dial = dial;
	[self updateHIObject:oldValue newValue:dial propertyName:@"dial"];
}

-(void)setOvershoot:(NSNumber *)overshoot {
	_overshoot = overshoot;
	[self updateNSObject:@"overshoot"];
}

-(void)setWrap:(NSNumber *)wrap {
	_wrap = wrap;
	[self updateNSObject:@"wrap"];
}

-(void)setPivot:(HIPivot *)pivot {
	HIPivot *oldValue = _pivot;
	if(self.pivot) {
		[self removeObserver:self forKeyPath:@"pivot.isUpdated"];
	}
	_pivot = pivot;
	[self updateHIObject:oldValue newValue:pivot propertyName:@"pivot"];
}

@end
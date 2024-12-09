#import "HIChartsJSONSerializableSubclass.h"
#import "HIBreaks.h"

@implementation HIBreaks

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBreaks *copyBreaks = [[HIBreaks allocWithZone: zone] init];
	copyBreaks.to = [self.to copyWithZone: zone];
	copyBreaks.breakSize = [self.breakSize copyWithZone: zone];
	copyBreaks.from = [self.from copyWithZone: zone];
	copyBreaks.repeat = [self.repeat copyWithZone: zone];
	return copyBreaks;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.breakSize) {
		params[@"breakSize"] = self.breakSize;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.repeat) {
		params[@"repeat"] = self.repeat;
	}
	return params;
}

# pragma mark - Setters

-(void)setTo:(id)to {
	id oldValue = _to;
	_to = to;
	[self updateNSObject:oldValue newValue:to propertyName:@"to"];
}

-(void)setBreakSize:(NSNumber *)breakSize {
	NSNumber *oldValue = _breakSize;
	_breakSize = breakSize;
	[self updateNSObject:oldValue newValue:breakSize propertyName:@"breakSize"];
}

-(void)setFrom:(id)from {
	id oldValue = _from;
	_from = from;
	[self updateNSObject:oldValue newValue:from propertyName:@"from"];
}

-(void)setRepeat:(NSNumber *)repeat {
	NSNumber *oldValue = _repeat;
	_repeat = repeat;
	[self updateNSObject:oldValue newValue:repeat propertyName:@"repeat"];
}

@end
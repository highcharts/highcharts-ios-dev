#import "HIChartsJSONSerializableSubclass.h"
#import "HIRadialGradientColorObject.h"

@implementation HIRadialGradientColorObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRadialGradientColorObject *copyRadialGradientColorObject = [[HIRadialGradientColorObject allocWithZone: zone] init];
	copyRadialGradientColorObject.cx = [self.cx copyWithZone: zone];
	copyRadialGradientColorObject.cy = [self.cy copyWithZone: zone];
	copyRadialGradientColorObject.r = [self.r copyWithZone: zone];
	return copyRadialGradientColorObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cx) {
		params[@"cx"] = self.cx;
	}
	if (self.cy) {
		params[@"cy"] = self.cy;
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	return params;
}

# pragma mark - Setters

-(void)setCx:(NSNumber *)cx {
	NSNumber *oldValue = _cx;
	_cx = cx;
	[self updateNSObject:oldValue newValue:cx propertyName:@"cx"];
}

-(void)setCy:(NSNumber *)cy {
	NSNumber *oldValue = _cy;
	_cy = cy;
	[self updateNSObject:oldValue newValue:cy propertyName:@"cy"];
}

-(void)setR:(NSNumber *)r {
	NSNumber *oldValue = _r;
	_r = r;
	[self updateNSObject:oldValue newValue:r propertyName:@"r"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HILinearGradientColorObject.h"

@implementation HILinearGradientColorObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILinearGradientColorObject *copyLinearGradientColorObject = [[HILinearGradientColorObject allocWithZone: zone] init];
	copyLinearGradientColorObject.x1 = [self.x1 copyWithZone: zone];
	copyLinearGradientColorObject.x2 = [self.x2 copyWithZone: zone];
	copyLinearGradientColorObject.y1 = [self.y1 copyWithZone: zone];
	copyLinearGradientColorObject.y2 = [self.y2 copyWithZone: zone];
	return copyLinearGradientColorObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.x1) {
		params[@"x1"] = self.x1;
	}
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.y1) {
		params[@"y1"] = self.y1;
	}
	if (self.y2) {
		params[@"y2"] = self.y2;
	}
	return params;
}

# pragma mark - Setters

-(void)setX1:(NSNumber *)x1 {
	NSNumber *oldValue = _x1;
	_x1 = x1;
	[self updateNSObject:oldValue newValue:x1 propertyName:@"x1"];
}

-(void)setX2:(NSNumber *)x2 {
	NSNumber *oldValue = _x2;
	_x2 = x2;
	[self updateNSObject:oldValue newValue:x2 propertyName:@"x2"];
}

-(void)setY1:(NSNumber *)y1 {
	NSNumber *oldValue = _y1;
	_y1 = y1;
	[self updateNSObject:oldValue newValue:y1 propertyName:@"y1"];
}

-(void)setY2:(NSNumber *)y2 {
	NSNumber *oldValue = _y2;
	_y2 = y2;
	[self updateNSObject:oldValue newValue:y2 propertyName:@"y2"];
}

@end
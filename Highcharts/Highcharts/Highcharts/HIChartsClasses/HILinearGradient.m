#import "HIChartsJSONSerializableSubclass.h"
#import "HILinearGradient.h"

@implementation HILinearGradient

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILinearGradient *copyLinearGradient = [[HILinearGradient allocWithZone: zone] init];
	copyLinearGradient.y1 = [self.y1 copyWithZone: zone];
	copyLinearGradient.x2 = [self.x2 copyWithZone: zone];
	copyLinearGradient.x1 = [self.x1 copyWithZone: zone];
	copyLinearGradient.y2 = [self.y2 copyWithZone: zone];
	return copyLinearGradient;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y1) {
		params[@"y1"] = self.y1;
	}
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.x1) {
		params[@"x1"] = self.x1;
	}
	if (self.y2) {
		params[@"y2"] = self.y2;
	}
	return params;
}

# pragma mark - Setters

-(void)setY1:(NSNumber *)y1 {
	NSNumber *oldValue = _y1;
	_y1 = y1;
	[self updateNSObject:oldValue newValue:y1 propertyName:@"y1"];
}

-(void)setX2:(NSNumber *)x2 {
	NSNumber *oldValue = _x2;
	_x2 = x2;
	[self updateNSObject:oldValue newValue:x2 propertyName:@"x2"];
}

-(void)setX1:(NSNumber *)x1 {
	NSNumber *oldValue = _x1;
	_x1 = x1;
	[self updateNSObject:oldValue newValue:x1 propertyName:@"x1"];
}

-(void)setY2:(NSNumber *)y2 {
	NSNumber *oldValue = _y2;
	_y2 = y2;
	[self updateNSObject:oldValue newValue:y2 propertyName:@"y2"];
}

@end
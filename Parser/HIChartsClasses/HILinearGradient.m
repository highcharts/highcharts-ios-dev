#import "HIChartsJSONSerializableSubclass.h"
#import "HILinearGradient.h"

@implementation HILinearGradient

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILinearGradient *copyLinearGradient = [[HILinearGradient allocWithZone: zone] init];
	copyLinearGradient.x2 = [self.x2 copyWithZone: zone];
	copyLinearGradient.y1 = [self.y1 copyWithZone: zone];
	copyLinearGradient.x1 = [self.x1 copyWithZone: zone];
	copyLinearGradient.y2 = [self.y2 copyWithZone: zone];
	return copyLinearGradient;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.y1) {
		params[@"y1"] = self.y1;
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

-(void)setX2:(NSNumber *)x2 {
	_x2 = x2;
	[self updateNSObject:@"x2"];
}

-(void)setY1:(NSNumber *)y1 {
	_y1 = y1;
	[self updateNSObject:@"y1"];
}

-(void)setX1:(NSNumber *)x1 {
	_x1 = x1;
	[self updateNSObject:@"x1"];
}

-(void)setY2:(NSNumber *)y2 {
	_y2 = y2;
	[self updateNSObject:@"y2"];
}

@end
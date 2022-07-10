#import "HIChartsJSONSerializableSubclass.h"
#import "HIPosition.h"

@implementation HIPosition

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPosition *copyPosition = [[HIPosition allocWithZone: zone] init];
	copyPosition.y = [self.y copyWithZone: zone];
	copyPosition.x = [self.x copyWithZone: zone];
	copyPosition.offsetX = [self.offsetX copyWithZone: zone];
	copyPosition.offsetY = [self.offsetY copyWithZone: zone];
	copyPosition.align = [self.align copyWithZone: zone];
	copyPosition.verticalAlign = [self.verticalAlign copyWithZone: zone];
	return copyPosition;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.offsetX) {
		params[@"offsetX"] = self.offsetX;
	}
	if (self.offsetY) {
		params[@"offsetY"] = self.offsetY;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	return params;
}

# pragma mark - Setters

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setOffsetX:(NSNumber *)offsetX {
	NSNumber *oldValue = _offsetX;
	_offsetX = offsetX;
	[self updateNSObject:oldValue newValue:offsetX propertyName:@"offsetX"];
}

-(void)setOffsetY:(NSNumber *)offsetY {
	NSNumber *oldValue = _offsetY;
	_offsetY = offsetY;
	[self updateNSObject:oldValue newValue:offsetY propertyName:@"offsetY"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

@end
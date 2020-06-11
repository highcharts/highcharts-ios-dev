#import "HIChartsJSONSerializableSubclass.h"
#import "HILabelIntersectBoxObject.h"

@implementation HILabelIntersectBoxObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILabelIntersectBoxObject *copyLabelIntersectBoxObject = [[HILabelIntersectBoxObject allocWithZone: zone] init];
	copyLabelIntersectBoxObject.bottom = [self.bottom copyWithZone: zone];
	copyLabelIntersectBoxObject.left = [self.left copyWithZone: zone];
	copyLabelIntersectBoxObject.right = [self.right copyWithZone: zone];
	copyLabelIntersectBoxObject.top = [self.top copyWithZone: zone];
	return copyLabelIntersectBoxObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.bottom) {
		params[@"bottom"] = self.bottom;
	}
	if (self.left) {
		params[@"left"] = self.left;
	}
	if (self.right) {
		params[@"right"] = self.right;
	}
	if (self.top) {
		params[@"top"] = self.top;
	}
	return params;
}

# pragma mark - Setters

-(void)setBottom:(NSNumber *)bottom {
	NSNumber *oldValue = _bottom;
	_bottom = bottom;
	[self updateNSObject:oldValue newValue:bottom propertyName:@"bottom"];
}

-(void)setLeft:(NSNumber *)left {
	NSNumber *oldValue = _left;
	_left = left;
	[self updateNSObject:oldValue newValue:left propertyName:@"left"];
}

-(void)setRight:(NSNumber *)right {
	NSNumber *oldValue = _right;
	_right = right;
	[self updateNSObject:oldValue newValue:right propertyName:@"right"];
}

-(void)setTop:(NSNumber *)top {
	NSNumber *oldValue = _top;
	_top = top;
	[self updateNSObject:oldValue newValue:top propertyName:@"top"];
}

@end
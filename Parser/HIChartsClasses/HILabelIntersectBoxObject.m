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
	_bottom = bottom;
	[self updateNSObject:@"bottom"];
}

-(void)setLeft:(NSNumber *)left {
	_left = left;
	[self updateNSObject:@"left"];
}

-(void)setRight:(NSNumber *)right {
	_right = right;
	[self updateNSObject:@"right"];
}

-(void)setTop:(NSNumber *)top {
	_top = top;
	[self updateNSObject:@"top"];
}

@end
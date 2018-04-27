#import "HIChartsJSONSerializableSubclass.h"
#import "HIPosition.h"

@implementation HIPosition

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIPosition *copyPosition = [[HIPosition allocWithZone: zone] init];
	copyPosition.y = [self.y copyWithZone: zone];
	copyPosition.x = [self.x copyWithZone: zone];
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
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

@end
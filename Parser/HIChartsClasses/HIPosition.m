#import "HIPosition.h"

@implementation HIPosition

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	return params;
}

# pragma mark - Setters

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

@end
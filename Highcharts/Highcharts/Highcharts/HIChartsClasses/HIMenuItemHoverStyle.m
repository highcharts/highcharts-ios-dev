#import "HIMenuItemHoverStyle.h"

@implementation HIMenuItemHoverStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.background) {
		params[@"background"] = self.background;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	return params;
}

# pragma mark - Setters

-(void)setBackground:(NSString *)background {
	_background = background;
	[self updateNSObject:@"background"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

@end
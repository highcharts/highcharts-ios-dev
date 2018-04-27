#import "HIChartsJSONSerializableSubclass.h"
#import "HIMenuItemHoverStyle.h"

@implementation HIMenuItemHoverStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIMenuItemHoverStyle *copyMenuItemHoverStyle = [[HIMenuItemHoverStyle allocWithZone: zone] init];
	copyMenuItemHoverStyle.color = [self.color copyWithZone: zone];
	copyMenuItemHoverStyle.background = [self.background copyWithZone: zone];
	return copyMenuItemHoverStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setBackground:(NSString *)background {
	_background = background;
	[self updateNSObject:@"background"];
}

@end
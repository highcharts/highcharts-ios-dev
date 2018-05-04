#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemHoverStyle.h"

@implementation HIItemHoverStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItemHoverStyle *copyItemHoverStyle = [[HIItemHoverStyle allocWithZone: zone] init];
	copyItemHoverStyle.color = [self.color copyWithZone: zone];
	return copyItemHoverStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

@end
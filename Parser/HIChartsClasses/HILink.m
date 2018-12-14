#import "HIChartsJSONSerializableSubclass.h"
#import "HILink.h"

@implementation HILink

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILink *copyLink = [[HILink allocWithZone: zone] init];
	copyLink.color = [self.color copyWithZone: zone];
	copyLink.width = [self.width copyWithZone: zone];
	copyLink.dashStyle = [self.dashStyle copyWithZone: zone];
	return copyLink;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
}

@end
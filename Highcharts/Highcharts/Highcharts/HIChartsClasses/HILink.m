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
	copyLink.opacity = [self.opacity copyWithZone: zone];
	copyLink.dashStyle = [self.dashStyle copyWithZone: zone];
	copyLink.width = [self.width copyWithZone: zone];
	return copyLink;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	NSString *oldValue = _dashStyle;
	_dashStyle = dashStyle;
	[self updateNSObject:oldValue newValue:dashStyle propertyName:@"dashStyle"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

@end
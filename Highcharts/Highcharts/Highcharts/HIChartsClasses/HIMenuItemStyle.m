#import "HIChartsJSONSerializableSubclass.h"
#import "HIMenuItemStyle.h"

@implementation HIMenuItemStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMenuItemStyle *copyMenuItemStyle = [[HIMenuItemStyle allocWithZone: zone] init];
	copyMenuItemStyle.padding = [self.padding copyWithZone: zone];
	copyMenuItemStyle.color = [self.color copyWithZone: zone];
	copyMenuItemStyle.transition = [self.transition copyWithZone: zone];
	copyMenuItemStyle.fontSize = [self.fontSize copyWithZone: zone];
	copyMenuItemStyle.background = [self.background copyWithZone: zone];
	return copyMenuItemStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.transition) {
		params[@"transition"] = self.transition;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	return params;
}

# pragma mark - Setters

-(void)setPadding:(NSString *)padding {
	NSString *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setTransition:(NSString *)transition {
	NSString *oldValue = _transition;
	_transition = transition;
	[self updateNSObject:oldValue newValue:transition propertyName:@"transition"];
}

-(void)setFontSize:(NSString *)fontSize {
	NSString *oldValue = _fontSize;
	_fontSize = fontSize;
	[self updateNSObject:oldValue newValue:fontSize propertyName:@"fontSize"];
}

-(void)setBackground:(NSString *)background {
	NSString *oldValue = _background;
	_background = background;
	[self updateNSObject:oldValue newValue:background propertyName:@"background"];
}

@end
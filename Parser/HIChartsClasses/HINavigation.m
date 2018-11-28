#import "HIChartsJSONSerializableSubclass.h"
#import "HINavigation.h"

@implementation HINavigation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINavigation *copyNavigation = [[HINavigation allocWithZone: zone] init];
	copyNavigation.menuStyle = [self.menuStyle copyWithZone: zone];
	copyNavigation.menuItemStyle = [self.menuItemStyle copyWithZone: zone];
	copyNavigation.buttonOptions = [self.buttonOptions copyWithZone: zone];
	copyNavigation.menuItemHoverStyle = [self.menuItemHoverStyle copyWithZone: zone];
	copyNavigation.style = [self.style copyWithZone: zone];
	copyNavigation.arrowSize = [self.arrowSize copyWithZone: zone];
	copyNavigation.enabled = [self.enabled copyWithZone: zone];
	copyNavigation.inactiveColor = [self.inactiveColor copyWithZone: zone];
	copyNavigation.animation = [self.animation copyWithZone: zone];
	copyNavigation.activeColor = [self.activeColor copyWithZone: zone];
	return copyNavigation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.menuStyle) {
		params[@"menuStyle"] = [self.menuStyle getParams];
	}
	if (self.menuItemStyle) {
		params[@"menuItemStyle"] = [self.menuItemStyle getParams];
	}
	if (self.buttonOptions) {
		params[@"buttonOptions"] = [self.buttonOptions getParams];
	}
	if (self.menuItemHoverStyle) {
		params[@"menuItemHoverStyle"] = [self.menuItemHoverStyle getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.arrowSize) {
		params[@"arrowSize"] = self.arrowSize;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.inactiveColor) {
		params[@"inactiveColor"] = [self.inactiveColor getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.activeColor) {
		params[@"activeColor"] = [self.activeColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setMenuStyle:(HIMenuStyle *)menuStyle {
	HIMenuStyle *oldValue = _menuStyle;
	_menuStyle = menuStyle;
	[self updateHIObject:oldValue newValue:menuStyle propertyName:@"menuStyle"];
}

-(void)setMenuItemStyle:(HIMenuItemStyle *)menuItemStyle {
	HIMenuItemStyle *oldValue = _menuItemStyle;
	_menuItemStyle = menuItemStyle;
	[self updateHIObject:oldValue newValue:menuItemStyle propertyName:@"menuItemStyle"];
}

-(void)setButtonOptions:(HIButtonOptions *)buttonOptions {
	HIButtonOptions *oldValue = _buttonOptions;
	_buttonOptions = buttonOptions;
	[self updateHIObject:oldValue newValue:buttonOptions propertyName:@"buttonOptions"];
}

-(void)setMenuItemHoverStyle:(HIMenuItemHoverStyle *)menuItemHoverStyle {
	HIMenuItemHoverStyle *oldValue = _menuItemHoverStyle;
	_menuItemHoverStyle = menuItemHoverStyle;
	[self updateHIObject:oldValue newValue:menuItemHoverStyle propertyName:@"menuItemHoverStyle"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setArrowSize:(NSNumber *)arrowSize {
	NSNumber *oldValue = _arrowSize;
	_arrowSize = arrowSize;
	[self updateNSObject:oldValue newValue:arrowSize propertyName:@"arrowSize"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setInactiveColor:(HIColor *)inactiveColor {
	HIColor *oldValue = _inactiveColor;
	_inactiveColor = inactiveColor;
	[self updateHIObject:oldValue newValue:inactiveColor propertyName:@"inactiveColor"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setActiveColor:(HIColor *)activeColor {
	HIColor *oldValue = _activeColor;
	_activeColor = activeColor;
	[self updateHIObject:oldValue newValue:activeColor propertyName:@"activeColor"];
}

@end
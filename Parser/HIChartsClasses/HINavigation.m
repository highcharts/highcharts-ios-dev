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
	copyNavigation.inactiveColor = [self.inactiveColor copyWithZone: zone];
	copyNavigation.enabled = [self.enabled copyWithZone: zone];
	copyNavigation.arrowSize = [self.arrowSize copyWithZone: zone];
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
		params[@"style"] = self.style;
	}
	if (self.inactiveColor) {
		params[@"inactiveColor"] = [self.inactiveColor getData];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.arrowSize) {
		params[@"arrowSize"] = self.arrowSize;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.activeColor) {
		params[@"activeColor"] = [self.activeColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setMenuStyle:(HIMenuStyle *)menuStyle {
	HIMenuStyle *oldValue = _menuStyle;
	if(self.menuStyle) {
		[self removeObserver:self forKeyPath:@"menuStyle.isUpdated"];
	}
	_menuStyle = menuStyle;
	[self updateHIObject:oldValue newValue:menuStyle propertyName:@"menuStyle"];
}

-(void)setMenuItemStyle:(HIMenuItemStyle *)menuItemStyle {
	HIMenuItemStyle *oldValue = _menuItemStyle;
	if(self.menuItemStyle) {
		[self removeObserver:self forKeyPath:@"menuItemStyle.isUpdated"];
	}
	_menuItemStyle = menuItemStyle;
	[self updateHIObject:oldValue newValue:menuItemStyle propertyName:@"menuItemStyle"];
}

-(void)setButtonOptions:(HIButtonOptions *)buttonOptions {
	HIButtonOptions *oldValue = _buttonOptions;
	if(self.buttonOptions) {
		[self removeObserver:self forKeyPath:@"buttonOptions.isUpdated"];
	}
	_buttonOptions = buttonOptions;
	[self updateHIObject:oldValue newValue:buttonOptions propertyName:@"buttonOptions"];
}

-(void)setMenuItemHoverStyle:(HIMenuItemHoverStyle *)menuItemHoverStyle {
	HIMenuItemHoverStyle *oldValue = _menuItemHoverStyle;
	if(self.menuItemHoverStyle) {
		[self removeObserver:self forKeyPath:@"menuItemHoverStyle.isUpdated"];
	}
	_menuItemHoverStyle = menuItemHoverStyle;
	[self updateHIObject:oldValue newValue:menuItemHoverStyle propertyName:@"menuItemHoverStyle"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setInactiveColor:(HIColor *)inactiveColor {
	HIColor *oldValue = _inactiveColor;
	if(self.inactiveColor) {
		[self removeObserver:self forKeyPath:@"inactiveColor.isUpdated"];
	}
	_inactiveColor = inactiveColor;
	[self updateHIObject:oldValue newValue:inactiveColor propertyName:@"inactiveColor"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setArrowSize:(NSNumber *)arrowSize {
	_arrowSize = arrowSize;
	[self updateNSObject:@"arrowSize"];
}

-(void)setAnimation:(id)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setActiveColor:(HIColor *)activeColor {
	HIColor *oldValue = _activeColor;
	if(self.activeColor) {
		[self removeObserver:self forKeyPath:@"activeColor.isUpdated"];
	}
	_activeColor = activeColor;
	[self updateHIObject:oldValue newValue:activeColor propertyName:@"activeColor"];
}

@end
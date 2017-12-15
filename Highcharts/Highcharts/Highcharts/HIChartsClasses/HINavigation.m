#import "HINavigation.h"

@implementation HINavigation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.inactiveColor) {
		params[@"inactiveColor"] = [self.inactiveColor getData];
	}
	if (self.arrowSize) {
		params[@"arrowSize"] = self.arrowSize;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.activeColor) {
		params[@"activeColor"] = [self.activeColor getData];
	}
	if (self.buttonOptions) {
		params[@"buttonOptions"] = [self.buttonOptions getParams];
	}
	if (self.menuItemStyle) {
		params[@"menuItemStyle"] = [self.menuItemStyle getParams];
	}
	if (self.menuStyle) {
		params[@"menuStyle"] = [self.menuStyle getParams];
	}
	if (self.menuItemHoverStyle) {
		params[@"menuItemHoverStyle"] = [self.menuItemHoverStyle getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setAnimation:(id)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setInactiveColor:(HIColor *)inactiveColor {
	HIColor *oldValue = _inactiveColor;
	if(self.inactiveColor) {
		[self removeObserver:self forKeyPath:@"inactiveColor.isUpdated"];
	}
	_inactiveColor = inactiveColor;
	[self updateHIObject:oldValue newValue:inactiveColor propertyName:@"inactiveColor"];
}

-(void)setArrowSize:(NSNumber *)arrowSize {
	_arrowSize = arrowSize;
	[self updateNSObject:@"arrowSize"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setActiveColor:(HIColor *)activeColor {
	HIColor *oldValue = _activeColor;
	if(self.activeColor) {
		[self removeObserver:self forKeyPath:@"activeColor.isUpdated"];
	}
	_activeColor = activeColor;
	[self updateHIObject:oldValue newValue:activeColor propertyName:@"activeColor"];
}

-(void)setButtonOptions:(HIButtonOptions *)buttonOptions {
	HIButtonOptions *oldValue = _buttonOptions;
	if(self.buttonOptions) {
		[self removeObserver:self forKeyPath:@"buttonOptions.isUpdated"];
	}
	_buttonOptions = buttonOptions;
	[self updateHIObject:oldValue newValue:buttonOptions propertyName:@"buttonOptions"];
}

-(void)setMenuItemStyle:(HIMenuItemStyle *)menuItemStyle {
	HIMenuItemStyle *oldValue = _menuItemStyle;
	if(self.menuItemStyle) {
		[self removeObserver:self forKeyPath:@"menuItemStyle.isUpdated"];
	}
	_menuItemStyle = menuItemStyle;
	[self updateHIObject:oldValue newValue:menuItemStyle propertyName:@"menuItemStyle"];
}

-(void)setMenuStyle:(HIMenuStyle *)menuStyle {
	HIMenuStyle *oldValue = _menuStyle;
	if(self.menuStyle) {
		[self removeObserver:self forKeyPath:@"menuStyle.isUpdated"];
	}
	_menuStyle = menuStyle;
	[self updateHIObject:oldValue newValue:menuStyle propertyName:@"menuStyle"];
}

-(void)setMenuItemHoverStyle:(HIMenuItemHoverStyle *)menuItemHoverStyle {
	HIMenuItemHoverStyle *oldValue = _menuItemHoverStyle;
	if(self.menuItemHoverStyle) {
		[self removeObserver:self forKeyPath:@"menuItemHoverStyle.isUpdated"];
	}
	_menuItemHoverStyle = menuItemHoverStyle;
	[self updateHIObject:oldValue newValue:menuItemHoverStyle propertyName:@"menuItemHoverStyle"];
}

@end
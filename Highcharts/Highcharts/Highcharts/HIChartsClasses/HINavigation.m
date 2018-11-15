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
		params[@"inactiveColor"] = self.inactiveColor;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.activeColor) {
		params[@"activeColor"] = self.activeColor;
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

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setArrowSize:(NSNumber *)arrowSize {
	_arrowSize = arrowSize;
	[self updateNSObject:@"arrowSize"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setInactiveColor:(NSString *)inactiveColor {
	_inactiveColor = inactiveColor;
	[self updateNSObject:@"inactiveColor"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setActiveColor:(NSString *)activeColor {
	_activeColor = activeColor;
	[self updateNSObject:@"activeColor"];
}

@end
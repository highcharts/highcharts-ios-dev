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
	copyNavigation.buttonOptions = [self.buttonOptions copyWithZone: zone];
	copyNavigation.bindingsClassName = [self.bindingsClassName copyWithZone: zone];
	copyNavigation.events = [self.events copyWithZone: zone];
	copyNavigation.menuItemStyle = [self.menuItemStyle copyWithZone: zone];
	copyNavigation.menuItemHoverStyle = [self.menuItemHoverStyle copyWithZone: zone];
	copyNavigation.bindings = [self.bindings copyWithZone: zone];
	copyNavigation.style = [self.style copyWithZone: zone];
	copyNavigation.inactiveColor = [self.inactiveColor copyWithZone: zone];
	copyNavigation.enabled = [self.enabled copyWithZone: zone];
	copyNavigation.arrowSize = [self.arrowSize copyWithZone: zone];
	copyNavigation.animation = [self.animation copyWithZone: zone];
	copyNavigation.activeColor = [self.activeColor copyWithZone: zone];
	copyNavigation.popup = [self.popup copyWithZone: zone];
	return copyNavigation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.menuStyle) {
		params[@"menuStyle"] = [self.menuStyle getParams];
	}
	if (self.buttonOptions) {
		params[@"buttonOptions"] = [self.buttonOptions getParams];
	}
	if (self.bindingsClassName) {
		params[@"bindingsClassName"] = self.bindingsClassName;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.menuItemStyle) {
		params[@"menuItemStyle"] = [self.menuItemStyle getParams];
	}
	if (self.menuItemHoverStyle) {
		params[@"menuItemHoverStyle"] = [self.menuItemHoverStyle getParams];
	}
	if (self.bindings) {
		params[@"bindings"] = [self.bindings getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
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
		params[@"animation"] = [self.animation getParams];
	}
	if (self.activeColor) {
		params[@"activeColor"] = [self.activeColor getData];
	}
	if (self.popup) {
		params[@"popup"] = [self.popup getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setMenuStyle:(HICSSObject *)menuStyle {
	HICSSObject *oldValue = _menuStyle;
	if(self.menuStyle) {
		[self removeObserver:self forKeyPath:@"menuStyle.isUpdated"];
	}
	_menuStyle = menuStyle;
	[self updateHIObject:oldValue newValue:menuStyle propertyName:@"menuStyle"];
}

-(void)setButtonOptions:(HIButtonOptions *)buttonOptions {
	HIButtonOptions *oldValue = _buttonOptions;
	if(self.buttonOptions) {
		[self removeObserver:self forKeyPath:@"buttonOptions.isUpdated"];
	}
	_buttonOptions = buttonOptions;
	[self updateHIObject:oldValue newValue:buttonOptions propertyName:@"buttonOptions"];
}

-(void)setBindingsClassName:(NSString *)bindingsClassName {
	_bindingsClassName = bindingsClassName;
	[self updateNSObject:@"bindingsClassName"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setMenuItemStyle:(HICSSObject *)menuItemStyle {
	HICSSObject *oldValue = _menuItemStyle;
	if(self.menuItemStyle) {
		[self removeObserver:self forKeyPath:@"menuItemStyle.isUpdated"];
	}
	_menuItemStyle = menuItemStyle;
	[self updateHIObject:oldValue newValue:menuItemStyle propertyName:@"menuItemStyle"];
}

-(void)setMenuItemHoverStyle:(HICSSObject *)menuItemHoverStyle {
	HICSSObject *oldValue = _menuItemHoverStyle;
	if(self.menuItemHoverStyle) {
		[self removeObserver:self forKeyPath:@"menuItemHoverStyle.isUpdated"];
	}
	_menuItemHoverStyle = menuItemHoverStyle;
	[self updateHIObject:oldValue newValue:menuItemHoverStyle propertyName:@"menuItemHoverStyle"];
}

-(void)setBindings:(HIBindings *)bindings {
	HIBindings *oldValue = _bindings;
	if(self.bindings) {
		[self removeObserver:self forKeyPath:@"bindings.isUpdated"];
	}
	_bindings = bindings;
	[self updateHIObject:oldValue newValue:bindings propertyName:@"bindings"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
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

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setActiveColor:(HIColor *)activeColor {
	HIColor *oldValue = _activeColor;
	if(self.activeColor) {
		[self removeObserver:self forKeyPath:@"activeColor.isUpdated"];
	}
	_activeColor = activeColor;
	[self updateHIObject:oldValue newValue:activeColor propertyName:@"activeColor"];
}

-(void)setPopup:(HIPopup *)popup {
	HIPopup *oldValue = _popup;
	if(self.popup) {
		[self removeObserver:self forKeyPath:@"popup.isUpdated"];
	}
	_popup = popup;
	[self updateHIObject:oldValue newValue:popup propertyName:@"popup"];
}

@end
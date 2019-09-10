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
	copyNavigation.iconsURL = [self.iconsURL copyWithZone: zone];
	copyNavigation.bindingsClassName = [self.bindingsClassName copyWithZone: zone];
	copyNavigation.annotationsOptions = [self.annotationsOptions copyWithZone: zone];
	copyNavigation.menuItemStyle = [self.menuItemStyle copyWithZone: zone];
	copyNavigation.bindings = [self.bindings copyWithZone: zone];
	copyNavigation.menuItemHoverStyle = [self.menuItemHoverStyle copyWithZone: zone];
	copyNavigation.events = [self.events copyWithZone: zone];
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
	if (self.iconsURL) {
		params[@"iconsURL"] = self.iconsURL;
	}
	if (self.bindingsClassName) {
		params[@"bindingsClassName"] = self.bindingsClassName;
	}
	if (self.annotationsOptions) {
		params[@"annotationsOptions"] = [self.annotationsOptions getParams];
	}
	if (self.menuItemStyle) {
		params[@"menuItemStyle"] = [self.menuItemStyle getParams];
	}
	if (self.bindings) {
		params[@"bindings"] = [self.bindings getParams];
	}
	if (self.menuItemHoverStyle) {
		params[@"menuItemHoverStyle"] = [self.menuItemHoverStyle getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
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
	_menuStyle = menuStyle;
	[self updateHIObject:oldValue newValue:menuStyle propertyName:@"menuStyle"];
}

-(void)setButtonOptions:(HIButtonOptions *)buttonOptions {
	HIButtonOptions *oldValue = _buttonOptions;
	_buttonOptions = buttonOptions;
	[self updateHIObject:oldValue newValue:buttonOptions propertyName:@"buttonOptions"];
}

-(void)setIconsURL:(NSString *)iconsURL {
	NSString *oldValue = _iconsURL;
	_iconsURL = iconsURL;
	[self updateNSObject:oldValue newValue:iconsURL propertyName:@"iconsURL"];
}

-(void)setBindingsClassName:(NSString *)bindingsClassName {
	NSString *oldValue = _bindingsClassName;
	_bindingsClassName = bindingsClassName;
	[self updateNSObject:oldValue newValue:bindingsClassName propertyName:@"bindingsClassName"];
}

-(void)setAnnotationsOptions:(HIAnnotationsOptions *)annotationsOptions {
	HIAnnotationsOptions *oldValue = _annotationsOptions;
	_annotationsOptions = annotationsOptions;
	[self updateHIObject:oldValue newValue:annotationsOptions propertyName:@"annotationsOptions"];
}

-(void)setMenuItemStyle:(HICSSObject *)menuItemStyle {
	HICSSObject *oldValue = _menuItemStyle;
	_menuItemStyle = menuItemStyle;
	[self updateHIObject:oldValue newValue:menuItemStyle propertyName:@"menuItemStyle"];
}

-(void)setBindings:(HIBindings *)bindings {
	HIBindings *oldValue = _bindings;
	_bindings = bindings;
	[self updateHIObject:oldValue newValue:bindings propertyName:@"bindings"];
}

-(void)setMenuItemHoverStyle:(HICSSObject *)menuItemHoverStyle {
	HICSSObject *oldValue = _menuItemHoverStyle;
	_menuItemHoverStyle = menuItemHoverStyle;
	[self updateHIObject:oldValue newValue:menuItemHoverStyle propertyName:@"menuItemHoverStyle"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setInactiveColor:(HIColor *)inactiveColor {
	HIColor *oldValue = _inactiveColor;
	_inactiveColor = inactiveColor;
	[self updateHIObject:oldValue newValue:inactiveColor propertyName:@"inactiveColor"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setArrowSize:(NSNumber *)arrowSize {
	NSNumber *oldValue = _arrowSize;
	_arrowSize = arrowSize;
	[self updateNSObject:oldValue newValue:arrowSize propertyName:@"arrowSize"];
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

-(void)setPopup:(HIPopup *)popup {
	HIPopup *oldValue = _popup;
	_popup = popup;
	[self updateHIObject:oldValue newValue:popup propertyName:@"popup"];
}

@end
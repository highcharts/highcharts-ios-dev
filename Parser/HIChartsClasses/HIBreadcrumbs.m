#import "HIChartsJSONSerializableSubclass.h"
#import "HIBreadcrumbs.h"

@implementation HIBreadcrumbs

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBreadcrumbs *copyBreadcrumbs = [[HIBreadcrumbs allocWithZone: zone] init];
	copyBreadcrumbs.zIndex = [self.zIndex copyWithZone: zone];
	copyBreadcrumbs.style = [self.style copyWithZone: zone];
	copyBreadcrumbs.format = [self.format copyWithZone: zone];
	copyBreadcrumbs.rtl = [self.rtl copyWithZone: zone];
	copyBreadcrumbs.useHTML = [self.useHTML copyWithZone: zone];
	copyBreadcrumbs.buttonTheme = [self.buttonTheme copyWithZone: zone];
	copyBreadcrumbs.relativeTo = [self.relativeTo copyWithZone: zone];
	copyBreadcrumbs.buttonSpacing = [self.buttonSpacing copyWithZone: zone];
	copyBreadcrumbs.separator = [self.separator copyWithZone: zone];
	copyBreadcrumbs.showFullPath = [self.showFullPath copyWithZone: zone];
	copyBreadcrumbs.position = [self.position copyWithZone: zone];
	copyBreadcrumbs.floating = [self.floating copyWithZone: zone];
	copyBreadcrumbs.formatter = [self.formatter copyWithZone: zone];
	copyBreadcrumbs.events = [self.events copyWithZone: zone];
	return copyBreadcrumbs;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.rtl) {
		params[@"rtl"] = self.rtl;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.buttonTheme) {
		params[@"buttonTheme"] = [self.buttonTheme getParams];
	}
	if (self.relativeTo) {
		params[@"relativeTo"] = self.relativeTo;
	}
	if (self.buttonSpacing) {
		params[@"buttonSpacing"] = self.buttonSpacing;
	}
	if (self.separator) {
		params[@"separator"] = [self.separator getParams];
	}
	if (self.showFullPath) {
		params[@"showFullPath"] = self.showFullPath;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setStyle:(HISVGAttributes *)style {
	HISVGAttributes *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setRtl:(NSNumber *)rtl {
	NSNumber *oldValue = _rtl;
	_rtl = rtl;
	[self updateNSObject:oldValue newValue:rtl propertyName:@"rtl"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setButtonTheme:(HISVGAttributes *)buttonTheme {
	HISVGAttributes *oldValue = _buttonTheme;
	_buttonTheme = buttonTheme;
	[self updateHIObject:oldValue newValue:buttonTheme propertyName:@"buttonTheme"];
}

-(void)setRelativeTo:(NSString *)relativeTo {
	NSString *oldValue = _relativeTo;
	_relativeTo = relativeTo;
	[self updateNSObject:oldValue newValue:relativeTo propertyName:@"relativeTo"];
}

-(void)setButtonSpacing:(NSNumber *)buttonSpacing {
	NSNumber *oldValue = _buttonSpacing;
	_buttonSpacing = buttonSpacing;
	[self updateNSObject:oldValue newValue:buttonSpacing propertyName:@"buttonSpacing"];
}

-(void)setSeparator:(HISeparator *)separator {
	HISeparator *oldValue = _separator;
	_separator = separator;
	[self updateHIObject:oldValue newValue:separator propertyName:@"separator"];
}

-(void)setShowFullPath:(NSNumber *)showFullPath {
	NSNumber *oldValue = _showFullPath;
	_showFullPath = showFullPath;
	[self updateNSObject:oldValue newValue:showFullPath propertyName:@"showFullPath"];
}

-(void)setPosition:(HIBreadcrumbsAlignOptions *)position {
	HIBreadcrumbsAlignOptions *oldValue = _position;
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setFloating:(NSNumber *)floating {
	NSNumber *oldValue = _floating;
	_floating = floating;
	[self updateNSObject:oldValue newValue:floating propertyName:@"floating"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

@end
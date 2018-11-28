#import "HIChartsJSONSerializableSubclass.h"
#import "HIFocusBorder.h"

@implementation HIFocusBorder

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIFocusBorder *copyFocusBorder = [[HIFocusBorder allocWithZone: zone] init];
	copyFocusBorder.margin = [self.margin copyWithZone: zone];
	copyFocusBorder.style = [self.style copyWithZone: zone];
	copyFocusBorder.enabled = [self.enabled copyWithZone: zone];
	copyFocusBorder.hideBrowserFocusOutline = [self.hideBrowserFocusOutline copyWithZone: zone];
	return copyFocusBorder;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.hideBrowserFocusOutline) {
		params[@"hideBrowserFocusOutline"] = self.hideBrowserFocusOutline;
	}
	return params;
}

# pragma mark - Setters

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setHideBrowserFocusOutline:(NSNumber *)hideBrowserFocusOutline {
	NSNumber *oldValue = _hideBrowserFocusOutline;
	_hideBrowserFocusOutline = hideBrowserFocusOutline;
	[self updateNSObject:oldValue newValue:hideBrowserFocusOutline propertyName:@"hideBrowserFocusOutline"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIFocusBorder.h"

@implementation HIFocusBorder

-(instancetype)init {
	return [super init];
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
	_margin = margin;
	[self updateNSObject:@"margin"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setHideBrowserFocusOutline:(NSNumber *)hideBrowserFocusOutline {
	_hideBrowserFocusOutline = hideBrowserFocusOutline;
	[self updateNSObject:@"hideBrowserFocusOutline"];
}

@end
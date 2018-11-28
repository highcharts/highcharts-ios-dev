#import "HIChartsJSONSerializableSubclass.h"
#import "HIKeyboardNavigation.h"

@implementation HIKeyboardNavigation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIKeyboardNavigation *copyKeyboardNavigation = [[HIKeyboardNavigation allocWithZone: zone] init];
	copyKeyboardNavigation.enabled = [self.enabled copyWithZone: zone];
	copyKeyboardNavigation.focusBorder = [self.focusBorder copyWithZone: zone];
	copyKeyboardNavigation.mode = [self.mode copyWithZone: zone];
	copyKeyboardNavigation.skipNullPoints = [self.skipNullPoints copyWithZone: zone];
	return copyKeyboardNavigation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.focusBorder) {
		params[@"focusBorder"] = [self.focusBorder getParams];
	}
	if (self.mode) {
		params[@"mode"] = self.mode;
	}
	if (self.skipNullPoints) {
		params[@"skipNullPoints"] = self.skipNullPoints;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setFocusBorder:(HIFocusBorder *)focusBorder {
	HIFocusBorder *oldValue = _focusBorder;
	_focusBorder = focusBorder;
	[self updateHIObject:oldValue newValue:focusBorder propertyName:@"focusBorder"];
}

-(void)setMode:(NSString *)mode {
	NSString *oldValue = _mode;
	_mode = mode;
	[self updateNSObject:oldValue newValue:mode propertyName:@"mode"];
}

-(void)setSkipNullPoints:(NSNumber *)skipNullPoints {
	NSNumber *oldValue = _skipNullPoints;
	_skipNullPoints = skipNullPoints;
	[self updateNSObject:oldValue newValue:skipNullPoints propertyName:@"skipNullPoints"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIKeyboardNavigation.h"

@implementation HIKeyboardNavigation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
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
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setFocusBorder:(HIFocusBorder *)focusBorder {
	HIFocusBorder *oldValue = _focusBorder;
	if(self.focusBorder) {
		[self removeObserver:self forKeyPath:@"focusBorder.isUpdated"];
	}
	_focusBorder = focusBorder;
	[self updateHIObject:oldValue newValue:focusBorder propertyName:@"focusBorder"];
}

-(void)setMode:(NSString *)mode {
	_mode = mode;
	[self updateNSObject:@"mode"];
}

-(void)setSkipNullPoints:(NSNumber *)skipNullPoints {
	_skipNullPoints = skipNullPoints;
	[self updateNSObject:@"skipNullPoints"];
}

@end
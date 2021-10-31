#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonOptions.h"

@implementation HIButtonOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIButtonOptions *copyButtonOptions = [[HIButtonOptions allocWithZone: zone] init];
	copyButtonOptions.y = [self.y copyWithZone: zone];
	copyButtonOptions.text = [self.text copyWithZone: zone];
	copyButtonOptions.theme = [self.theme copyWithZone: zone];
	copyButtonOptions.enabled = [self.enabled copyWithZone: zone];
	return copyButtonOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setTheme:(HITheme *)theme {
	HITheme *oldValue = _theme;
	_theme = theme;
	[self updateHIObject:oldValue newValue:theme propertyName:@"theme"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
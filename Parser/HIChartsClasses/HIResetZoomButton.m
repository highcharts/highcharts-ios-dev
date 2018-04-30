#import "HIChartsJSONSerializableSubclass.h"
#import "HIResetZoomButton.h"

@implementation HIResetZoomButton

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIResetZoomButton *copyResetZoomButton = [[HIResetZoomButton allocWithZone: zone] init];
	copyResetZoomButton.position = [self.position copyWithZone: zone];
	copyResetZoomButton.theme = [self.theme copyWithZone: zone];
	copyResetZoomButton.relativeTo = [self.relativeTo copyWithZone: zone];
	return copyResetZoomButton;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	if (self.relativeTo) {
		params[@"relativeTo"] = self.relativeTo;
	}
	return params;
}

# pragma mark - Setters

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	if(self.position) {
		[self removeObserver:self forKeyPath:@"position.isUpdated"];
	}
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setTheme:(HITheme *)theme {
	HITheme *oldValue = _theme;
	if(self.theme) {
		[self removeObserver:self forKeyPath:@"theme.isUpdated"];
	}
	_theme = theme;
	[self updateHIObject:oldValue newValue:theme propertyName:@"theme"];
}

-(void)setRelativeTo:(NSString *)relativeTo {
	_relativeTo = relativeTo;
	[self updateNSObject:@"relativeTo"];
}

@end
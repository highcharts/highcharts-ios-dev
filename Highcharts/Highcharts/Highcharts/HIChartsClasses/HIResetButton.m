#import "HIChartsJSONSerializableSubclass.h"
#import "HIResetButton.h"

@implementation HIResetButton

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIResetButton *copyResetButton = [[HIResetButton allocWithZone: zone] init];
	copyResetButton.position = [self.position copyWithZone: zone];
	copyResetButton.theme = [self.theme copyWithZone: zone];
	copyResetButton.relativeTo = [self.relativeTo copyWithZone: zone];
	return copyResetButton;
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

-(void)setPosition:(HIAlignObject *)position {
	HIAlignObject *oldValue = _position;
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setTheme:(HISVGAttributes *)theme {
	HISVGAttributes *oldValue = _theme;
	_theme = theme;
	[self updateHIObject:oldValue newValue:theme propertyName:@"theme"];
}

-(void)setRelativeTo:(NSString *)relativeTo {
	NSString *oldValue = _relativeTo;
	_relativeTo = relativeTo;
	[self updateNSObject:oldValue newValue:relativeTo propertyName:@"relativeTo"];
}

@end
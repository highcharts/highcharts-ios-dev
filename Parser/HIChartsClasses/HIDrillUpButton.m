#import "HIChartsJSONSerializableSubclass.h"
#import "HIDrillUpButton.h"

@implementation HIDrillUpButton

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDrillUpButton *copyDrillUpButton = [[HIDrillUpButton allocWithZone: zone] init];
	copyDrillUpButton.position = [self.position copyWithZone: zone];
	copyDrillUpButton.theme = [self.theme copyWithZone: zone];
	copyDrillUpButton.relativeTo = [self.relativeTo copyWithZone: zone];
	return copyDrillUpButton;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.theme) {
		params[@"theme"] = self.theme;
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

-(void)setTheme:(id)theme {
	_theme = theme;
	[self updateNSObject:@"theme"];
}

-(void)setRelativeTo:(NSString *)relativeTo {
	_relativeTo = relativeTo;
	[self updateNSObject:@"relativeTo"];
}

@end
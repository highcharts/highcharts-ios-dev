#import "HIChartsJSONSerializableSubclass.h"
#import "HIResetZoomButton.h"

@implementation HIResetZoomButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.relativeTo) {
		params[@"relativeTo"] = self.relativeTo;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setRelativeTo:(NSString *)relativeTo {
	_relativeTo = relativeTo;
	[self updateNSObject:@"relativeTo"];
}

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

@end
#import "HIDrillUpButton.h"

@implementation HIDrillUpButton

-(instancetype)init {
	return [super init];
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
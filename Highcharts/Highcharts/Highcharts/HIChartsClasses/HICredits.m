#import "HICredits.h"

@implementation HICredits

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.href) {
		params[@"href"] = self.href;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setHref:(NSString *)href {
	_href = href;
	[self updateNSObject:@"href"];
}

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	if(self.position) {
		[self removeObserver:self forKeyPath:@"position.isUpdated"];
	}
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

@end
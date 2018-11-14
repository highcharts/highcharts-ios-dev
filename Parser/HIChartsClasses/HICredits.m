#import "HIChartsJSONSerializableSubclass.h"
#import "HICredits.h"

@implementation HICredits

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICredits *copyCredits = [[HICredits allocWithZone: zone] init];
	copyCredits.style = [self.style copyWithZone: zone];
	copyCredits.text = [self.text copyWithZone: zone];
	copyCredits.enabled = [self.enabled copyWithZone: zone];
	copyCredits.href = [self.href copyWithZone: zone];
	copyCredits.position = [self.position copyWithZone: zone];
	return copyCredits;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.href) {
		params[@"href"] = self.href;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
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

@end
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
		params[@"style"] = [self.style getParams];
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
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setHref:(NSString *)href {
	NSString *oldValue = _href;
	_href = href;
	[self updateNSObject:oldValue newValue:href propertyName:@"href"];
}

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HISeparator.h"

@implementation HISeparator

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeparator *copySeparator = [[HISeparator allocWithZone: zone] init];
	copySeparator.text = [self.text copyWithZone: zone];
	copySeparator.style = [self.style copyWithZone: zone];
	return copySeparator;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

@end
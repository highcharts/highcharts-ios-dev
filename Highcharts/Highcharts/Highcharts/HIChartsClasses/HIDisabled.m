#import "HIChartsJSONSerializableSubclass.h"
#import "HIDisabled.h"

@implementation HIDisabled

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDisabled *copyDisabled = [[HIDisabled allocWithZone: zone] init];
	copyDisabled.style = [self.style copyWithZone: zone];
	return copyDisabled;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

@end

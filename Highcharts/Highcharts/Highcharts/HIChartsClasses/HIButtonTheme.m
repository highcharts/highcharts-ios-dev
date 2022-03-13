#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonTheme.h"

@implementation HIButtonTheme

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIButtonTheme *copyButtonTheme = [[HIButtonTheme allocWithZone: zone] init];
	copyButtonTheme.style = [self.style copyWithZone: zone];
	return copyButtonTheme;
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

-(void)setStyle:(HICSSObject *)style {
  HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

@end

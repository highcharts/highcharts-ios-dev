#import "HIChartsJSONSerializableSubclass.h"
#import "HIGlobal.h"

@implementation HIGlobal

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGlobal *copyGlobal = [[HIGlobal allocWithZone: zone] init];
	copyGlobal.buttonTheme = [self.buttonTheme copyWithZone: zone];
	return copyGlobal;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.buttonTheme) {
		params[@"buttonTheme"] = [self.buttonTheme getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setButtonTheme:(HIButtonTheme *)buttonTheme {
	HIButtonTheme *oldValue = _buttonTheme;
	_buttonTheme = buttonTheme;
	[self updateHIObject:oldValue newValue:buttonTheme propertyName:@"buttonTheme"];
}

@end

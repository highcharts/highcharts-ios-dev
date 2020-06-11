#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtons.h"

@implementation HIButtons

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIButtons *copyButtons = [[HIButtons allocWithZone: zone] init];
	copyButtons.contextButton = [self.contextButton copyWithZone: zone];
	return copyButtons;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.contextButton) {
		params[@"contextButton"] = [self.contextButton getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setContextButton:(HIContextButton *)contextButton {
	HIContextButton *oldValue = _contextButton;
	_contextButton = contextButton;
	[self updateHIObject:oldValue newValue:contextButton propertyName:@"contextButton"];
}

@end
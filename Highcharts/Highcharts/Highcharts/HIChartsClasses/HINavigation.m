#import "HINavigation.h"

@implementation HINavigation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.buttonOptions) {
		params[@"buttonOptions"] = [self.buttonOptions getParams];
	}
	if (self.menuItemStyle) {
		params[@"menuItemStyle"] = [self.menuItemStyle getParams];
	}
	if (self.menuStyle) {
		params[@"menuStyle"] = [self.menuStyle getParams];
	}
	if (self.menuItemHoverStyle) {
		params[@"menuItemHoverStyle"] = [self.menuItemHoverStyle getParams];
	}
	return params;
}

@end
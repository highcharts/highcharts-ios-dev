#import "Navigation.h"

@implementation Navigation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.menuItemHoverStyle) {
		params[@"menuItemHoverStyle"] = self.menuItemHoverStyle;
	}
	if (self.menuStyle) {
		params[@"menuStyle"] = self.menuStyle;
	}
	if (self.buttonOptions) {
		params[@"buttonOptions"] = [self.buttonOptions getParams];
	}
	if (self.menuItemStyle) {
		params[@"menuItemStyle"] = self.menuItemStyle;
	}
	return params;
}

@end
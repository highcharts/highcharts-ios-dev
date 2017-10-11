#import "HIExportingButtonsContextButtonTheme.h"

@implementation HIExportingButtonsContextButtonTheme

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	return params;
}

@end
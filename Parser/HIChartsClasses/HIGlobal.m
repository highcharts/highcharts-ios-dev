#import "HIChartsJSONSerializableSubclass.h"
#import "HIGlobal.h"

@implementation HIGlobal

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.VMLRadialGradientURL) {
		params[@"VMLRadialGradientURL"] = self.VMLRadialGradientURL;
	}
	return params;
}

# pragma mark - Setters

-(void)setVMLRadialGradientURL:(NSString *)VMLRadialGradientURL {
	_VMLRadialGradientURL = VMLRadialGradientURL;
	[self updateNSObject:@"VMLRadialGradientURL"];
}

@end
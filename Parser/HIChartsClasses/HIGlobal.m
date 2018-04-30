#import "HIChartsJSONSerializableSubclass.h"
#import "HIGlobal.h"

@implementation HIGlobal

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGlobal *copyGlobal = [[HIGlobal allocWithZone: zone] init];
	copyGlobal.VMLRadialGradientURL = [self.VMLRadialGradientURL copyWithZone: zone];
	return copyGlobal;
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
#import "HIChartsJSONSerializableSubclass.h"
#import "HINormal.h"

@implementation HINormal

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HINormal *copyNormal = [[HINormal allocWithZone: zone] init];
	copyNormal.animation = [self.animation copyWithZone: zone];
	return copyNormal;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	return params;
}

# pragma mark - Setters

-(void)setAnimation:(id)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

@end
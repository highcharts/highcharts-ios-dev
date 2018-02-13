#import "HIChartsJSONSerializableSubclass.h"
#import "HINormal.h"

@implementation HINormal

-(instancetype)init {
	return [super init];
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
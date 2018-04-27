#import "HIChartsJSONSerializableSubclass.h"
#import "HIAttributes.h"

@implementation HIAttributes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIAttributes *copyAttributes = [[HIAttributes allocWithZone: zone] init];
	copyAttributes.zIndex = [self.zIndex copyWithZone: zone];
	return copyAttributes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

@end
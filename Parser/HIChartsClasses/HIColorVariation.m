#import "HIChartsJSONSerializableSubclass.h"
#import "HIColorVariation.h"

@implementation HIColorVariation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIColorVariation *copyColorVariation = [[HIColorVariation allocWithZone: zone] init];
	copyColorVariation.to = [self.to copyWithZone: zone];
	copyColorVariation.key = [self.key copyWithZone: zone];
	return copyColorVariation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.key) {
		params[@"key"] = self.key;
	}
	return params;
}

# pragma mark - Setters

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setKey:(NSString *)key {
	_key = key;
	[self updateNSObject:@"key"];
}

@end
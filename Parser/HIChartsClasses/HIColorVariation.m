#import "HIChartsJSONSerializableSubclass.h"
#import "HIColorVariation.h"

@implementation HIColorVariation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.key) {
		params[@"key"] = self.key;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	return params;
}

# pragma mark - Setters

-(void)setKey:(NSString *)key {
	_key = key;
	[self updateNSObject:@"key"];
}

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HITextPath.h"

@implementation HITextPath

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITextPath *copyTextPath = [[HITextPath allocWithZone: zone] init];
	copyTextPath.attributes = [self.attributes copyWithZone: zone];
	copyTextPath.enabled = [self.enabled copyWithZone: zone];
	return copyTextPath;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.attributes) {
		params[@"attributes"] = [self.attributes getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setAttributes:(HIAttributes *)attributes {
	HIAttributes *oldValue = _attributes;
	_attributes = attributes;
	[self updateHIObject:oldValue newValue:attributes propertyName:@"attributes"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
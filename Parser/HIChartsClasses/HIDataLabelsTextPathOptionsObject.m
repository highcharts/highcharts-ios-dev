#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabelsTextPathOptionsObject.h"

@implementation HIDataLabelsTextPathOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabelsTextPathOptionsObject *copyDataLabelsTextPathOptionsObject = [[HIDataLabelsTextPathOptionsObject allocWithZone: zone] init];
	copyDataLabelsTextPathOptionsObject.attributes = [self.attributes copyWithZone: zone];
	copyDataLabelsTextPathOptionsObject.enabled = [self.enabled copyWithZone: zone];
	return copyDataLabelsTextPathOptionsObject;
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

-(void)setAttributes:(HISVGAttributes *)attributes {
	HISVGAttributes *oldValue = _attributes;
	_attributes = attributes;
	[self updateHIObject:oldValue newValue:attributes propertyName:@"attributes"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
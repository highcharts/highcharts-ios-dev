#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabelsTextPath.h"

@implementation HIDataLabelsTextPath

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabelsTextPath *copyDataLabelsTextPath = [[HIDataLabelsTextPath allocWithZone: zone] init];
	copyDataLabelsTextPath.attributes = [self.attributes copyWithZone: zone];
	copyDataLabelsTextPath.enabled = [self.enabled copyWithZone: zone];
	return copyDataLabelsTextPath;
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
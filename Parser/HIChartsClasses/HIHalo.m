#import "HIChartsJSONSerializableSubclass.h"
#import "HIHalo.h"

@implementation HIHalo

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIHalo *copyHalo = [[HIHalo allocWithZone: zone] init];
	copyHalo.opacity = [self.opacity copyWithZone: zone];
	copyHalo.attributes = [self.attributes copyWithZone: zone];
	copyHalo.enabled = [self.enabled copyWithZone: zone];
	copyHalo.size = [self.size copyWithZone: zone];
	return copyHalo;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.attributes) {
		params[@"attributes"] = [self.attributes getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

# pragma mark - Setters

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setAttributes:(HIAttributes *)attributes {
	HIAttributes *oldValue = _attributes;
	if(self.attributes) {
		[self removeObserver:self forKeyPath:@"attributes.isUpdated"];
	}
	_attributes = attributes;
	[self updateHIObject:oldValue newValue:attributes propertyName:@"attributes"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setSize:(NSNumber *)size {
	_size = size;
	[self updateNSObject:@"size"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIHalo.h"

@implementation HIHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.attributes) {
		params[@"attributes"] = self.attributes;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setSize:(NSNumber *)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setAttributes:(id)attributes {
	_attributes = attributes;
	[self updateNSObject:@"attributes"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

@end
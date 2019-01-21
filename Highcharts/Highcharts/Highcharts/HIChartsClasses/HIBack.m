#import "HIChartsJSONSerializableSubclass.h"
#import "HIBack.h"

@implementation HIBack

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBack *copyBack = [[HIBack allocWithZone: zone] init];
	copyBack.color = [self.color copyWithZone: zone];
	copyBack.visible = [self.visible copyWithZone: zone];
	copyBack.size = [self.size copyWithZone: zone];
	return copyBack;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setVisible:(id)visible {
	id oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setSize:(NSNumber *)size {
	NSNumber *oldValue = _size;
	_size = size;
	[self updateNSObject:oldValue newValue:size propertyName:@"size"];
}

@end
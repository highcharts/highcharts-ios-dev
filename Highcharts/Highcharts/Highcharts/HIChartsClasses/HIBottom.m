#import "HIChartsJSONSerializableSubclass.h"
#import "HIBottom.h"

@implementation HIBottom

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBottom *copyBottom = [[HIBottom allocWithZone: zone] init];
	copyBottom.color = [self.color copyWithZone: zone];
	copyBottom.visible = [self.visible copyWithZone: zone];
	copyBottom.size = [self.size copyWithZone: zone];
	return copyBottom;
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
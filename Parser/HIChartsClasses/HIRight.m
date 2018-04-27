#import "HIChartsJSONSerializableSubclass.h"
#import "HIRight.h"

@implementation HIRight

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIRight *copyRight = [[HIRight allocWithZone: zone] init];
	copyRight.color = [self.color copyWithZone: zone];
	copyRight.visible = [self.visible copyWithZone: zone];
	copyRight.size = [self.size copyWithZone: zone];
	return copyRight;
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
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setVisible:(id)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setSize:(NSNumber *)size {
	_size = size;
	[self updateNSObject:@"size"];
}

@end
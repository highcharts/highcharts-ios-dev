#import "HIChartsJSONSerializableSubclass.h"
#import "HITop.h"

@implementation HITop

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITop *copyTop = [[HITop allocWithZone: zone] init];
	copyTop.color = [self.color copyWithZone: zone];
	copyTop.visible = [self.visible copyWithZone: zone];
	copyTop.size = [self.size copyWithZone: zone];
	return copyTop;
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
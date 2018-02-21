#import "HIChartsJSONSerializableSubclass.h"
#import "HIFront.h"

@implementation HIFront

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
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

-(void)setSize:(NSNumber *)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setVisible:(id)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

@end
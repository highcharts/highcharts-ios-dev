#import "HIChartsJSONSerializableSubclass.h"
#import "HIControlPointOptions.h"

@implementation HIControlPointOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIControlPointOptions *copyControlPointOptions = [[HIControlPointOptions allocWithZone: zone] init];
	copyControlPointOptions.visible = [self.visible copyWithZone: zone];
	copyControlPointOptions.positioner = [self.positioner copyWithZone: zone];
	copyControlPointOptions.width = [self.width copyWithZone: zone];
	copyControlPointOptions.style = [self.style copyWithZone: zone];
	copyControlPointOptions.height = [self.height copyWithZone: zone];
	return copyControlPointOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.positioner) {
		params[@"positioner"] = [self.positioner getFunction];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	return params;
}

# pragma mark - Setters

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setPositioner:(HIFunction *)positioner {
	HIFunction *oldValue = _positioner;
	_positioner = positioner;
	[self updateHIObject:oldValue newValue:positioner propertyName:@"positioner"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HICollapseButton.h"

@implementation HICollapseButton

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICollapseButton *copyCollapseButton = [[HICollapseButton allocWithZone: zone] init];
	copyCollapseButton.style = [self.style copyWithZone: zone];
	copyCollapseButton.enabled = [self.enabled copyWithZone: zone];
	copyCollapseButton.shape = [self.shape copyWithZone: zone];
	copyCollapseButton.height = [self.height copyWithZone: zone];
	copyCollapseButton.width = [self.width copyWithZone: zone];
	copyCollapseButton.onlyOnHover = [self.onlyOnHover copyWithZone: zone];
	copyCollapseButton.y = [self.y copyWithZone: zone];
	copyCollapseButton.x = [self.x copyWithZone: zone];
	copyCollapseButton.lineWidth = [self.lineWidth copyWithZone: zone];
	return copyCollapseButton;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.onlyOnHover) {
		params[@"onlyOnHover"] = self.onlyOnHover;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setShape:(NSString *)shape {
	NSString *oldValue = _shape;
	_shape = shape;
	[self updateNSObject:oldValue newValue:shape propertyName:@"shape"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setOnlyOnHover:(NSNumber *)onlyOnHover {
	NSNumber *oldValue = _onlyOnHover;
	_onlyOnHover = onlyOnHover;
	[self updateNSObject:oldValue newValue:onlyOnHover propertyName:@"onlyOnHover"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

@end
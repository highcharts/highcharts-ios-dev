#import "HIChartsJSONSerializableSubclass.h"
#import "HILink.h"

@implementation HILink

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILink *copyLink = [[HILink allocWithZone: zone] init];
	copyLink.color = [self.color copyWithZone: zone];
	copyLink.type = [self.type copyWithZone: zone];
	copyLink.lineWidth = [self.lineWidth copyWithZone: zone];
	copyLink.radius = [self.radius copyWithZone: zone];
	copyLink.offset = [self.offset copyWithZone: zone];
	copyLink.opacity = [self.opacity copyWithZone: zone];
	copyLink.dashStyle = [self.dashStyle copyWithZone: zone];
	copyLink.width = [self.width copyWithZone: zone];
	copyLink.cursor = [self.cursor copyWithZone: zone];
	copyLink.curveFactor = [self.curveFactor copyWithZone: zone];
	return copyLink;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.curveFactor) {
		params[@"curveFactor"] = self.curveFactor;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setRadius:(NSNumber *)radius {
	NSNumber *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setOffset:(NSNumber *)offset {
	NSNumber *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	NSString *oldValue = _dashStyle;
	_dashStyle = dashStyle;
	[self updateNSObject:oldValue newValue:dashStyle propertyName:@"dashStyle"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setCursor:(NSString *)cursor {
	NSString *oldValue = _cursor;
	_cursor = cursor;
	[self updateNSObject:oldValue newValue:cursor propertyName:@"cursor"];
}

-(void)setCurveFactor:(NSNumber *)curveFactor {
	NSNumber *oldValue = _curveFactor;
	_curveFactor = curveFactor;
	[self updateNSObject:oldValue newValue:curveFactor propertyName:@"curveFactor"];
}

@end
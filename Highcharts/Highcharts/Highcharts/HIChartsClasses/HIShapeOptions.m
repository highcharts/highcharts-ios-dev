#import "HIChartsJSONSerializableSubclass.h"
#import "HIShapeOptions.h"

@implementation HIShapeOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIShapeOptions *copyShapeOptions = [[HIShapeOptions allocWithZone: zone] init];
	copyShapeOptions.src = [self.src copyWithZone: zone];
	copyShapeOptions.dashStyle = [self.dashStyle copyWithZone: zone];
	copyShapeOptions.strokeWidth = [self.strokeWidth copyWithZone: zone];
	copyShapeOptions.yAxis = [self.yAxis copyWithZone: zone];
	copyShapeOptions.ry = [self.ry copyWithZone: zone];
	copyShapeOptions.height = [self.height copyWithZone: zone];
	copyShapeOptions.width = [self.width copyWithZone: zone];
	copyShapeOptions.stroke = [self.stroke copyWithZone: zone];
	copyShapeOptions.r = [self.r copyWithZone: zone];
	copyShapeOptions.xAxis = [self.xAxis copyWithZone: zone];
	copyShapeOptions.snap = [self.snap copyWithZone: zone];
	copyShapeOptions.type = [self.type copyWithZone: zone];
	copyShapeOptions.fill = [self.fill copyWithZone: zone];
	return copyShapeOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.src) {
		params[@"src"] = self.src;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.ry) {
		params[@"ry"] = self.ry;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setSrc:(NSString *)src {
	NSString *oldValue = _src;
	_src = src;
	[self updateNSObject:oldValue newValue:src propertyName:@"src"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	NSString *oldValue = _dashStyle;
	_dashStyle = dashStyle;
	[self updateNSObject:oldValue newValue:dashStyle propertyName:@"dashStyle"];
}

-(void)setStrokeWidth:(NSNumber *)strokeWidth {
	NSNumber *oldValue = _strokeWidth;
	_strokeWidth = strokeWidth;
	[self updateNSObject:oldValue newValue:strokeWidth propertyName:@"strokeWidth"];
}

-(void)setYAxis:(NSNumber *)yAxis {
	NSNumber *oldValue = _yAxis;
	_yAxis = yAxis;
	[self updateNSObject:oldValue newValue:yAxis propertyName:@"yAxis"];
}

-(void)setRy:(NSNumber *)ry {
	NSNumber *oldValue = _ry;
	_ry = ry;
	[self updateNSObject:oldValue newValue:ry propertyName:@"ry"];
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

-(void)setStroke:(HIColor *)stroke {
	HIColor *oldValue = _stroke;
	_stroke = stroke;
	[self updateHIObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setR:(NSNumber *)r {
	NSNumber *oldValue = _r;
	_r = r;
	[self updateNSObject:oldValue newValue:r propertyName:@"r"];
}

-(void)setXAxis:(NSNumber *)xAxis {
	NSNumber *oldValue = _xAxis;
	_xAxis = xAxis;
	[self updateNSObject:oldValue newValue:xAxis propertyName:@"xAxis"];
}

-(void)setSnap:(NSNumber *)snap {
	NSNumber *oldValue = _snap;
	_snap = snap;
	[self updateNSObject:oldValue newValue:snap propertyName:@"snap"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

@end
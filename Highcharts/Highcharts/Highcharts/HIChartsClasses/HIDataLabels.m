#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabels.h"

@implementation HIDataLabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabels *copyDataLabels = [[HIDataLabels allocWithZone: zone] init];
	copyDataLabels.defer = [self.defer copyWithZone: zone];
	copyDataLabels.inside = [self.inside copyWithZone: zone];
	copyDataLabels.formatter = [self.formatter copyWithZone: zone];
	copyDataLabels.enabled = [self.enabled copyWithZone: zone];
	copyDataLabels.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyDataLabels.crop = [self.crop copyWithZone: zone];
	copyDataLabels.padding = [self.padding copyWithZone: zone];
	copyDataLabels.overflow = [self.overflow copyWithZone: zone];
	copyDataLabels.x = [self.x copyWithZone: zone];
	copyDataLabels.align = [self.align copyWithZone: zone];
	copyDataLabels.y = [self.y copyWithZone: zone];
	copyDataLabels.yHigh = [self.yHigh copyWithZone: zone];
	copyDataLabels.xHigh = [self.xHigh copyWithZone: zone];
	copyDataLabels.xLow = [self.xLow copyWithZone: zone];
	copyDataLabels.yLow = [self.yLow copyWithZone: zone];
	copyDataLabels.borderRadius = [self.borderRadius copyWithZone: zone];
	copyDataLabels.shape = [self.shape copyWithZone: zone];
	copyDataLabels.borderColor = [self.borderColor copyWithZone: zone];
	copyDataLabels.filter = [self.filter copyWithZone: zone];
	copyDataLabels.style = [self.style copyWithZone: zone];
	copyDataLabels.rotation = [self.rotation copyWithZone: zone];
	copyDataLabels.useHTML = [self.useHTML copyWithZone: zone];
	copyDataLabels.color = [self.color copyWithZone: zone];
	copyDataLabels.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyDataLabels.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyDataLabels.format = [self.format copyWithZone: zone];
	copyDataLabels.shadow = [self.shadow copyWithZone: zone];
	copyDataLabels.zIndex = [self.zIndex copyWithZone: zone];
	copyDataLabels.className = [self.className copyWithZone: zone];
	copyDataLabels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDataLabels.rotationMode = [self.rotationMode copyWithZone: zone];
	copyDataLabels.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	copyDataLabels.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copyDataLabels.distance = [self.distance copyWithZone: zone];
	copyDataLabels.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyDataLabels.softConnector = [self.softConnector copyWithZone: zone];
	copyDataLabels.connectorPadding = [self.connectorPadding copyWithZone: zone];
	copyDataLabels.connectorColor = [self.connectorColor copyWithZone: zone];
	return copyDataLabels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.yHigh) {
		params[@"yHigh"] = self.yHigh;
	}
	if (self.xHigh) {
		params[@"xHigh"] = self.xHigh;
	}
	if (self.xLow) {
		params[@"xLow"] = self.xLow;
	}
	if (self.yLow) {
		params[@"yLow"] = self.yLow;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.filter) {
		params[@"filter"] = [self.filter getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = [self.connectorColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setDefer:(NSNumber *)defer {
	NSNumber *oldValue = _defer;
	_defer = defer;
	[self updateNSObject:oldValue newValue:defer propertyName:@"defer"];
}

-(void)setInside:(NSNumber *)inside {
	NSNumber *oldValue = _inside;
	_inside = inside;
	[self updateNSObject:oldValue newValue:inside propertyName:@"inside"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setCrop:(NSNumber *)crop {
	NSNumber *oldValue = _crop;
	_crop = crop;
	[self updateNSObject:oldValue newValue:crop propertyName:@"crop"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setOverflow:(NSNumber *)overflow {
	NSNumber *oldValue = _overflow;
	_overflow = overflow;
	[self updateNSObject:oldValue newValue:overflow propertyName:@"overflow"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setYHigh:(id)yHigh {
	id oldValue = _yHigh;
	_yHigh = yHigh;
	[self updateNSObject:oldValue newValue:yHigh propertyName:@"yHigh"];
}

-(void)setXHigh:(NSNumber *)xHigh {
	NSNumber *oldValue = _xHigh;
	_xHigh = xHigh;
	[self updateNSObject:oldValue newValue:xHigh propertyName:@"xHigh"];
}

-(void)setXLow:(NSNumber *)xLow {
	NSNumber *oldValue = _xLow;
	_xLow = xLow;
	[self updateNSObject:oldValue newValue:xLow propertyName:@"xLow"];
}

-(void)setYLow:(id)yLow {
	id oldValue = _yLow;
	_yLow = yLow;
	[self updateNSObject:oldValue newValue:yLow propertyName:@"yLow"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setShape:(NSString *)shape {
	NSString *oldValue = _shape;
	_shape = shape;
	[self updateNSObject:oldValue newValue:shape propertyName:@"shape"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setFilter:(HIFilter *)filter {
	HIFilter *oldValue = _filter;
	_filter = filter;
	[self updateHIObject:oldValue newValue:filter propertyName:@"filter"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setShadow:(id)shadow {
	id oldValue = _shadow;
	_shadow = shadow;
	[self updateNSObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	NSString *oldValue = _rotationMode;
	_rotationMode = rotationMode;
	[self updateNSObject:oldValue newValue:rotationMode propertyName:@"rotationMode"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

-(void)setNodeFormat:(NSString *)nodeFormat {
	NSString *oldValue = _nodeFormat;
	_nodeFormat = nodeFormat;
	[self updateNSObject:oldValue newValue:nodeFormat propertyName:@"nodeFormat"];
}

-(void)setDistance:(NSNumber *)distance {
	NSNumber *oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	NSNumber *oldValue = _connectorWidth;
	_connectorWidth = connectorWidth;
	[self updateNSObject:oldValue newValue:connectorWidth propertyName:@"connectorWidth"];
}

-(void)setSoftConnector:(NSNumber *)softConnector {
	NSNumber *oldValue = _softConnector;
	_softConnector = softConnector;
	[self updateNSObject:oldValue newValue:softConnector propertyName:@"softConnector"];
}

-(void)setConnectorPadding:(NSNumber *)connectorPadding {
	NSNumber *oldValue = _connectorPadding;
	_connectorPadding = connectorPadding;
	[self updateNSObject:oldValue newValue:connectorPadding propertyName:@"connectorPadding"];
}

-(void)setConnectorColor:(HIColor *)connectorColor {
	HIColor *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateHIObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

@end
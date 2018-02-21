#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabels.h"

@implementation HIDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.filter) {
		params[@"filter"] = [self.filter getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.xHigh) {
		params[@"xHigh"] = self.xHigh;
	}
	if (self.yHigh) {
		params[@"yHigh"] = self.yHigh;
	}
	if (self.xLow) {
		params[@"xLow"] = self.xLow;
	}
	if (self.yLow) {
		params[@"yLow"] = self.yLow;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	return params;
}

# pragma mark - Setters

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setOverflow:(NSString *)overflow {
	_overflow = overflow;
	[self updateNSObject:@"overflow"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setShape:(NSString *)shape {
	_shape = shape;
	[self updateNSObject:@"shape"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	_allowOverlap = allowOverlap;
	[self updateNSObject:@"allowOverlap"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setFilter:(HIFilter *)filter {
	HIFilter *oldValue = _filter;
	if(self.filter) {
		[self removeObserver:self forKeyPath:@"filter.isUpdated"];
	}
	_filter = filter;
	[self updateHIObject:oldValue newValue:filter propertyName:@"filter"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	if(self.formatter) {
		[self removeObserver:self forKeyPath:@"formatter.isUpdated"];
	}
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setInside:(NSNumber *)inside {
	_inside = inside;
	[self updateNSObject:@"inside"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setFormat:(NSString *)format {
	_format = format;
	[self updateNSObject:@"format"];
}

-(void)setDefer:(NSNumber *)defer {
	_defer = defer;
	[self updateNSObject:@"defer"];
}

-(void)setCrop:(NSNumber *)crop {
	_crop = crop;
	[self updateNSObject:@"crop"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	_connectorWidth = connectorWidth;
	[self updateNSObject:@"connectorWidth"];
}

-(void)setConnectorPadding:(NSNumber *)connectorPadding {
	_connectorPadding = connectorPadding;
	[self updateNSObject:@"connectorPadding"];
}

-(void)setConnectorColor:(NSString *)connectorColor {
	_connectorColor = connectorColor;
	[self updateNSObject:@"connectorColor"];
}

-(void)setDistance:(NSNumber *)distance {
	_distance = distance;
	[self updateNSObject:@"distance"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	_rotationMode = rotationMode;
	[self updateNSObject:@"rotationMode"];
}

-(void)setSoftConnector:(NSNumber *)softConnector {
	_softConnector = softConnector;
	[self updateNSObject:@"softConnector"];
}

-(void)setXHigh:(NSNumber *)xHigh {
	_xHigh = xHigh;
	[self updateNSObject:@"xHigh"];
}

-(void)setYHigh:(NSNumber *)yHigh {
	_yHigh = yHigh;
	[self updateNSObject:@"yHigh"];
}

-(void)setXLow:(NSNumber *)xLow {
	_xLow = xLow;
	[self updateNSObject:@"xLow"];
}

-(void)setYLow:(NSNumber *)yLow {
	_yLow = yLow;
	[self updateNSObject:@"yLow"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	if(self.nodeFormatter) {
		[self removeObserver:self forKeyPath:@"nodeFormatter.isUpdated"];
	}
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

-(void)setNodeFormat:(NSString *)nodeFormat {
	_nodeFormat = nodeFormat;
	[self updateNSObject:@"nodeFormat"];
}

@end
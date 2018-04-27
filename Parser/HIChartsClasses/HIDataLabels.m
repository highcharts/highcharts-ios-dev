#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabels.h"

@implementation HIDataLabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
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
	copyDataLabels.y = [self.y copyWithZone: zone];
	copyDataLabels.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	copyDataLabels.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copyDataLabels.connectorColor = [self.connectorColor copyWithZone: zone];
	copyDataLabels.distance = [self.distance copyWithZone: zone];
	copyDataLabels.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyDataLabels.softConnector = [self.softConnector copyWithZone: zone];
	copyDataLabels.connectorPadding = [self.connectorPadding copyWithZone: zone];
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
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
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
	return params;
}

# pragma mark - Setters

-(void)setDefer:(NSNumber *)defer {
	_defer = defer;
	[self updateNSObject:@"defer"];
}

-(void)setInside:(NSNumber *)inside {
	_inside = inside;
	[self updateNSObject:@"inside"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	if(self.formatter) {
		[self removeObserver:self forKeyPath:@"formatter.isUpdated"];
	}
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setCrop:(NSNumber *)crop {
	_crop = crop;
	[self updateNSObject:@"crop"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setOverflow:(NSNumber *)overflow {
	_overflow = overflow;
	[self updateNSObject:@"overflow"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setYHigh:(id)yHigh {
	_yHigh = yHigh;
	[self updateNSObject:@"yHigh"];
}

-(void)setXHigh:(NSNumber *)xHigh {
	_xHigh = xHigh;
	[self updateNSObject:@"xHigh"];
}

-(void)setXLow:(NSNumber *)xLow {
	_xLow = xLow;
	[self updateNSObject:@"xLow"];
}

-(void)setYLow:(id)yLow {
	_yLow = yLow;
	[self updateNSObject:@"yLow"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setShape:(NSString *)shape {
	_shape = shape;
	[self updateNSObject:@"shape"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setFilter:(HIFilter *)filter {
	HIFilter *oldValue = _filter;
	if(self.filter) {
		[self removeObserver:self forKeyPath:@"filter.isUpdated"];
	}
	_filter = filter;
	[self updateHIObject:oldValue newValue:filter propertyName:@"filter"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	_allowOverlap = allowOverlap;
	[self updateNSObject:@"allowOverlap"];
}

-(void)setFormat:(NSString *)format {
	_format = format;
	[self updateNSObject:@"format"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	_rotationMode = rotationMode;
	[self updateNSObject:@"rotationMode"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
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

-(void)setConnectorColor:(NSString *)connectorColor {
	_connectorColor = connectorColor;
	[self updateNSObject:@"connectorColor"];
}

-(void)setDistance:(NSNumber *)distance {
	_distance = distance;
	[self updateNSObject:@"distance"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	_connectorWidth = connectorWidth;
	[self updateNSObject:@"connectorWidth"];
}

-(void)setSoftConnector:(NSNumber *)softConnector {
	_softConnector = softConnector;
	[self updateNSObject:@"softConnector"];
}

-(void)setConnectorPadding:(NSNumber *)connectorPadding {
	_connectorPadding = connectorPadding;
	[self updateNSObject:@"connectorPadding"];
}

@end
#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabels.h"

@implementation HIDataLabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabels *copyDataLabels = [[HIDataLabels allocWithZone: zone] init];
	copyDataLabels.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyDataLabels.defer = [self.defer copyWithZone: zone];
	copyDataLabels.style = [self.style copyWithZone: zone];
	copyDataLabels.rotationMode = [self.rotationMode copyWithZone: zone];
	copyDataLabels.connectorColor = [self.connectorColor copyWithZone: zone];
	copyDataLabels.crookDistance = [self.crookDistance copyWithZone: zone];
	copyDataLabels.alignTo = [self.alignTo copyWithZone: zone];
	copyDataLabels.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyDataLabels.softConnector = [self.softConnector copyWithZone: zone];
	copyDataLabels.format = [self.format copyWithZone: zone];
	copyDataLabels.enabled = [self.enabled copyWithZone: zone];
	copyDataLabels.connectorPadding = [self.connectorPadding copyWithZone: zone];
	copyDataLabels.connectorShape = [self.connectorShape copyWithZone: zone];
	copyDataLabels.formatter = [self.formatter copyWithZone: zone];
	copyDataLabels.distance = [self.distance copyWithZone: zone];
	copyDataLabels.nullFormatter = [self.nullFormatter copyWithZone: zone];
	copyDataLabels.borderRadius = [self.borderRadius copyWithZone: zone];
	copyDataLabels.crop = [self.crop copyWithZone: zone];
	copyDataLabels.shape = [self.shape copyWithZone: zone];
	copyDataLabels.rotation = [self.rotation copyWithZone: zone];
	copyDataLabels.borderColor = [self.borderColor copyWithZone: zone];
	copyDataLabels.filter = [self.filter copyWithZone: zone];
	copyDataLabels.useHTML = [self.useHTML copyWithZone: zone];
	copyDataLabels.animation = [self.animation copyWithZone: zone];
	copyDataLabels.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyDataLabels.nullFormat = [self.nullFormat copyWithZone: zone];
	copyDataLabels.padding = [self.padding copyWithZone: zone];
	copyDataLabels.shadow = [self.shadow copyWithZone: zone];
	copyDataLabels.x = [self.x copyWithZone: zone];
	copyDataLabels.overflow = [self.overflow copyWithZone: zone];
	copyDataLabels.zIndex = [self.zIndex copyWithZone: zone];
	copyDataLabels.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyDataLabels.className = [self.className copyWithZone: zone];
	copyDataLabels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDataLabels.y = [self.y copyWithZone: zone];
	copyDataLabels.position = [self.position copyWithZone: zone];
	copyDataLabels.textPath = [self.textPath copyWithZone: zone];
	copyDataLabels.align = [self.align copyWithZone: zone];
	copyDataLabels.inside = [self.inside copyWithZone: zone];
	copyDataLabels.linkFormat = [self.linkFormat copyWithZone: zone];
	copyDataLabels.linkTextPath = [self.linkTextPath copyWithZone: zone];
	copyDataLabels.linkFormatter = [self.linkFormatter copyWithZone: zone];
	copyDataLabels.yHigh = [self.yHigh copyWithZone: zone];
	copyDataLabels.xHigh = [self.xHigh copyWithZone: zone];
	copyDataLabels.xLow = [self.xLow copyWithZone: zone];
	copyDataLabels.yLow = [self.yLow copyWithZone: zone];
	copyDataLabels.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	copyDataLabels.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copyDataLabels.parentNodeFormat = [self.parentNodeFormat copyWithZone: zone];
	copyDataLabels.parentNodeTextPath = [self.parentNodeTextPath copyWithZone: zone];
	copyDataLabels.parentNodeFormatter = [self.parentNodeFormatter copyWithZone: zone];
	copyDataLabels.attributes = [self.attributes copyWithZone: zone];
	copyDataLabels.alternate = [self.alternate copyWithZone: zone];
	copyDataLabels.color = [self.color copyWithZone: zone];
	copyDataLabels.width = [self.width copyWithZone: zone];
	return copyDataLabels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = [self.connectorColor getData];
	}
	if (self.crookDistance) {
		params[@"crookDistance"] = self.crookDistance;
	}
	if (self.alignTo) {
		params[@"alignTo"] = self.alignTo;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.connectorShape) {
		params[@"connectorShape"] = self.connectorShape;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.nullFormatter) {
		params[@"nullFormatter"] = [self.nullFormatter getFunction];
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.filter) {
		params[@"filter"] = [self.filter getParams];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.nullFormat) {
		params[@"nullFormat"] = self.nullFormat;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.textPath) {
		params[@"textPath"] = [self.textPath getParams];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.linkFormat) {
		params[@"linkFormat"] = self.linkFormat;
	}
	if (self.linkTextPath) {
		params[@"linkTextPath"] = [self.linkTextPath getParams];
	}
	if (self.linkFormatter) {
		params[@"linkFormatter"] = [self.linkFormatter getFunction];
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
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.parentNodeFormat) {
		params[@"parentNodeFormat"] = self.parentNodeFormat;
	}
	if (self.parentNodeTextPath) {
		params[@"parentNodeTextPath"] = [self.parentNodeTextPath getParams];
	}
	if (self.parentNodeFormatter) {
	}
	if (self.attributes) {
		params[@"attributes"] = [self.attributes getParams];
	}
	if (self.alternate) {
		params[@"alternate"] = self.alternate;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setDefer:(NSNumber *)defer {
	NSNumber *oldValue = _defer;
	_defer = defer;
	[self updateNSObject:oldValue newValue:defer propertyName:@"defer"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	NSString *oldValue = _rotationMode;
	_rotationMode = rotationMode;
	[self updateNSObject:oldValue newValue:rotationMode propertyName:@"rotationMode"];
}

-(void)setConnectorColor:(HIColor *)connectorColor {
	HIColor *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateHIObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setCrookDistance:(NSString *)crookDistance {
	NSString *oldValue = _crookDistance;
	_crookDistance = crookDistance;
	[self updateNSObject:oldValue newValue:crookDistance propertyName:@"crookDistance"];
}

-(void)setAlignTo:(NSString *)alignTo {
	NSString *oldValue = _alignTo;
	_alignTo = alignTo;
	[self updateNSObject:oldValue newValue:alignTo propertyName:@"alignTo"];
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

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setConnectorPadding:(NSNumber *)connectorPadding {
	NSNumber *oldValue = _connectorPadding;
	_connectorPadding = connectorPadding;
	[self updateNSObject:oldValue newValue:connectorPadding propertyName:@"connectorPadding"];
}

-(void)setConnectorShape:(NSString *)connectorShape {
	NSString *oldValue = _connectorShape;
	_connectorShape = connectorShape;
	[self updateNSObject:oldValue newValue:connectorShape propertyName:@"connectorShape"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setDistance:(id)distance {
	id oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setNullFormatter:(HIFunction *)nullFormatter {
	HIFunction *oldValue = _nullFormatter;
	_nullFormatter = nullFormatter;
	[self updateHIObject:oldValue newValue:nullFormatter propertyName:@"nullFormatter"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setCrop:(NSNumber *)crop {
	NSNumber *oldValue = _crop;
	_crop = crop;
	[self updateNSObject:oldValue newValue:crop propertyName:@"crop"];
}

-(void)setShape:(NSString *)shape {
	NSString *oldValue = _shape;
	_shape = shape;
	[self updateNSObject:oldValue newValue:shape propertyName:@"shape"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
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

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setNullFormat:(id)nullFormat {
	id oldValue = _nullFormat;
	_nullFormat = nullFormat;
	[self updateNSObject:oldValue newValue:nullFormat propertyName:@"nullFormat"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setShadow:(HIShadowOptionsObject *)shadow {
	HIShadowOptionsObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setOverflow:(NSString *)overflow {
	NSString *oldValue = _overflow;
	_overflow = overflow;
	[self updateNSObject:oldValue newValue:overflow propertyName:@"overflow"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
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

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setPosition:(NSString *)position {
	NSString *oldValue = _position;
	_position = position;
	[self updateNSObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setTextPath:(HITextPath *)textPath {
	HITextPath *oldValue = _textPath;
	_textPath = textPath;
	[self updateHIObject:oldValue newValue:textPath propertyName:@"textPath"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setInside:(NSNumber *)inside {
	NSNumber *oldValue = _inside;
	_inside = inside;
	[self updateNSObject:oldValue newValue:inside propertyName:@"inside"];
}

-(void)setLinkFormat:(NSString *)linkFormat {
	NSString *oldValue = _linkFormat;
	_linkFormat = linkFormat;
	[self updateNSObject:oldValue newValue:linkFormat propertyName:@"linkFormat"];
}

-(void)setLinkTextPath:(HILinkTextPath *)linkTextPath {
	HILinkTextPath *oldValue = _linkTextPath;
	_linkTextPath = linkTextPath;
	[self updateHIObject:oldValue newValue:linkTextPath propertyName:@"linkTextPath"];
}

-(void)setLinkFormatter:(HIFunction *)linkFormatter {
	HIFunction *oldValue = _linkFormatter;
	_linkFormatter = linkFormatter;
	[self updateHIObject:oldValue newValue:linkFormatter propertyName:@"linkFormatter"];
}

-(void)setYHigh:(NSNumber *)yHigh {
	NSNumber *oldValue = _yHigh;
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

-(void)setYLow:(NSNumber *)yLow {
	NSNumber *oldValue = _yLow;
	_yLow = yLow;
	[self updateNSObject:oldValue newValue:yLow propertyName:@"yLow"];
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

-(void)setParentNodeFormat:(NSString *)parentNodeFormat {
	NSString *oldValue = _parentNodeFormat;
	_parentNodeFormat = parentNodeFormat;
	[self updateNSObject:oldValue newValue:parentNodeFormat propertyName:@"parentNodeFormat"];
}

-(void)setParentNodeTextPath:(HIParentNodeTextPath *)parentNodeTextPath {
	HIParentNodeTextPath *oldValue = _parentNodeTextPath;
	_parentNodeTextPath = parentNodeTextPath;
	[self updateHIObject:oldValue newValue:parentNodeTextPath propertyName:@"parentNodeTextPath"];
}

-(void)setParentNodeFormatter:(id)parentNodeFormatter {
	id oldValue = _parentNodeFormatter;
	_parentNodeFormatter = parentNodeFormatter;
	[self updateNSObject:oldValue newValue:parentNodeFormatter propertyName:@"parentNodeFormatter"];
}

-(void)setAttributes:(HISVGAttributes *)attributes {
	HISVGAttributes *oldValue = _attributes;
	_attributes = attributes;
	[self updateHIObject:oldValue newValue:attributes propertyName:@"attributes"];
}

-(void)setAlternate:(NSNumber *)alternate {
	NSNumber *oldValue = _alternate;
	_alternate = alternate;
	[self updateNSObject:oldValue newValue:alternate propertyName:@"alternate"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

@end
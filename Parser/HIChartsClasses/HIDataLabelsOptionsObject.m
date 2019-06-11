#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabelsOptionsObject.h"

@implementation HIDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabelsOptionsObject *copyDataLabelsOptionsObject = [[HIDataLabelsOptionsObject allocWithZone: zone] init];
	copyDataLabelsOptionsObject.align = [self.align copyWithZone: zone];
	copyDataLabelsOptionsObject.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyDataLabelsOptionsObject.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyDataLabelsOptionsObject.borderColor = [self.borderColor copyWithZone: zone];
	copyDataLabelsOptionsObject.borderRadius = [self.borderRadius copyWithZone: zone];
	copyDataLabelsOptionsObject.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDataLabelsOptionsObject.className = [self.className copyWithZone: zone];
	copyDataLabelsOptionsObject.color = [self.color copyWithZone: zone];
	copyDataLabelsOptionsObject.crop = [self.crop copyWithZone: zone];
	copyDataLabelsOptionsObject.defer = [self.defer copyWithZone: zone];
	copyDataLabelsOptionsObject.enabled = [self.enabled copyWithZone: zone];
	copyDataLabelsOptionsObject.filter = [self.filter copyWithZone: zone];
	copyDataLabelsOptionsObject.format = [self.format copyWithZone: zone];
	copyDataLabelsOptionsObject.formatter = [self.formatter copyWithZone: zone];
	copyDataLabelsOptionsObject.inside = [self.inside copyWithZone: zone];
	copyDataLabelsOptionsObject.nullFormat = [self.nullFormat copyWithZone: zone];
	copyDataLabelsOptionsObject.nullFormatter = [self.nullFormatter copyWithZone: zone];
	copyDataLabelsOptionsObject.overflow = [self.overflow copyWithZone: zone];
	copyDataLabelsOptionsObject.padding = [self.padding copyWithZone: zone];
	copyDataLabelsOptionsObject.rotation = [self.rotation copyWithZone: zone];
	copyDataLabelsOptionsObject.shadow = [self.shadow copyWithZone: zone];
	copyDataLabelsOptionsObject.shape = [self.shape copyWithZone: zone];
	copyDataLabelsOptionsObject.style = [self.style copyWithZone: zone];
	copyDataLabelsOptionsObject.textPath = [self.textPath copyWithZone: zone];
	copyDataLabelsOptionsObject.useHTML = [self.useHTML copyWithZone: zone];
	copyDataLabelsOptionsObject.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyDataLabelsOptionsObject.x = [self.x copyWithZone: zone];
	copyDataLabelsOptionsObject.y = [self.y copyWithZone: zone];
	copyDataLabelsOptionsObject.zIndex = [self.zIndex copyWithZone: zone];
	return copyDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.filter) {
		params[@"filter"] = [self.filter getParams];
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.nullFormat) {
		params[@"nullFormat"] = self.nullFormat;
	}
	if (self.nullFormatter) {
		params[@"nullFormatter"] = [self.nullFormatter getFunction];
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.textPath) {
		params[@"textPath"] = [self.textPath getParams];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setBorderColor:(NSString *)borderColor {
	NSString *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateNSObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setCrop:(NSNumber *)crop {
	NSNumber *oldValue = _crop;
	_crop = crop;
	[self updateNSObject:oldValue newValue:crop propertyName:@"crop"];
}

-(void)setDefer:(NSNumber *)defer {
	NSNumber *oldValue = _defer;
	_defer = defer;
	[self updateNSObject:oldValue newValue:defer propertyName:@"defer"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setFilter:(HIDataLabelsFilterOptionsObject *)filter {
	HIDataLabelsFilterOptionsObject *oldValue = _filter;
	_filter = filter;
	[self updateHIObject:oldValue newValue:filter propertyName:@"filter"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setInside:(NSNumber *)inside {
	NSNumber *oldValue = _inside;
	_inside = inside;
	[self updateNSObject:oldValue newValue:inside propertyName:@"inside"];
}

-(void)setNullFormat:(NSString *)nullFormat {
	NSString *oldValue = _nullFormat;
	_nullFormat = nullFormat;
	[self updateNSObject:oldValue newValue:nullFormat propertyName:@"nullFormat"];
}

-(void)setNullFormatter:(HIFunction *)nullFormatter {
	HIFunction *oldValue = _nullFormatter;
	_nullFormatter = nullFormatter;
	[self updateHIObject:oldValue newValue:nullFormatter propertyName:@"nullFormatter"];
}

-(void)setOverflow:(NSString *)overflow {
	NSString *oldValue = _overflow;
	_overflow = overflow;
	[self updateNSObject:oldValue newValue:overflow propertyName:@"overflow"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setShadow:(HIShadowOptionsObject *)shadow {
	HIShadowOptionsObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setShape:(NSString *)shape {
	NSString *oldValue = _shape;
	_shape = shape;
	[self updateNSObject:oldValue newValue:shape propertyName:@"shape"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setTextPath:(HIDataLabelsTextPath *)textPath {
	HIDataLabelsTextPath *oldValue = _textPath;
	_textPath = textPath;
	[self updateHIObject:oldValue newValue:textPath propertyName:@"textPath"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

@end
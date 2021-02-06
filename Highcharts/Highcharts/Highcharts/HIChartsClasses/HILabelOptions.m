#import "HIChartsJSONSerializableSubclass.h"
#import "HILabelOptions.h"

@implementation HILabelOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILabelOptions *copyLabelOptions = [[HILabelOptions allocWithZone: zone] init];
	copyLabelOptions.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyLabelOptions.borderRadius = [self.borderRadius copyWithZone: zone];
	copyLabelOptions.text = [self.text copyWithZone: zone];
	copyLabelOptions.accessibility = [self.accessibility copyWithZone: zone];
	copyLabelOptions.crop = [self.crop copyWithZone: zone];
	copyLabelOptions.shape = [self.shape copyWithZone: zone];
	copyLabelOptions.useHTML = [self.useHTML copyWithZone: zone];
	copyLabelOptions.borderColor = [self.borderColor copyWithZone: zone];
	copyLabelOptions.style = [self.style copyWithZone: zone];
	copyLabelOptions.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyLabelOptions.formatter = [self.formatter copyWithZone: zone];
	copyLabelOptions.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyLabelOptions.shadow = [self.shadow copyWithZone: zone];
	copyLabelOptions.format = [self.format copyWithZone: zone];
	copyLabelOptions.padding = [self.padding copyWithZone: zone];
	copyLabelOptions.overflow = [self.overflow copyWithZone: zone];
	copyLabelOptions.distance = [self.distance copyWithZone: zone];
	copyLabelOptions.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLabelOptions.align = [self.align copyWithZone: zone];
	copyLabelOptions.className = [self.className copyWithZone: zone];
	copyLabelOptions.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLabelOptions.y = [self.y copyWithZone: zone];
	copyLabelOptions.x = [self.x copyWithZone: zone];
	return copyLabelOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.includeInDataExport) {
		params[@"includeInDataExport"] = self.includeInDataExport;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.align) {
		params[@"align"] = self.align;
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
	if (self.x) {
		params[@"x"] = self.x;
	}
	return params;
}

# pragma mark - Setters

-(void)setIncludeInDataExport:(NSNumber *)includeInDataExport {
	NSNumber *oldValue = _includeInDataExport;
	_includeInDataExport = includeInDataExport;
	[self updateNSObject:oldValue newValue:includeInDataExport propertyName:@"includeInDataExport"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setAccessibility:(HILabelOptionsAccessibility *)accessibility {
	HILabelOptionsAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
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

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setShadow:(HIShadowOptionsObject *)shadow {
	HIShadowOptionsObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setOverflow:(NSString *)overflow {
	NSString *oldValue = _overflow;
	_overflow = overflow;
	[self updateNSObject:oldValue newValue:overflow propertyName:@"overflow"];
}

-(void)setDistance:(NSNumber *)distance {
	NSNumber *oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
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

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

@end

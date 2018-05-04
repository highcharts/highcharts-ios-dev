#import "HIChartsJSONSerializableSubclass.h"
#import "HILabelOptions.h"

@implementation HILabelOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILabelOptions *copyLabelOptions = [[HILabelOptions allocWithZone: zone] init];
	copyLabelOptions.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyLabelOptions.borderColor = [self.borderColor copyWithZone: zone];
	copyLabelOptions.style = [self.style copyWithZone: zone];
	copyLabelOptions.padding = [self.padding copyWithZone: zone];
	copyLabelOptions.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLabelOptions.distance = [self.distance copyWithZone: zone];
	copyLabelOptions.borderRadius = [self.borderRadius copyWithZone: zone];
	copyLabelOptions.text = [self.text copyWithZone: zone];
	copyLabelOptions.align = [self.align copyWithZone: zone];
	copyLabelOptions.format = [self.format copyWithZone: zone];
	copyLabelOptions.crop = [self.crop copyWithZone: zone];
	copyLabelOptions.useHTML = [self.useHTML copyWithZone: zone];
	copyLabelOptions.className = [self.className copyWithZone: zone];
	copyLabelOptions.shape = [self.shape copyWithZone: zone];
	copyLabelOptions.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLabelOptions.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyLabelOptions.y = [self.y copyWithZone: zone];
	copyLabelOptions.x = [self.x copyWithZone: zone];
	copyLabelOptions.overflow = [self.overflow copyWithZone: zone];
	copyLabelOptions.formatter = [self.formatter copyWithZone: zone];
	copyLabelOptions.shadow = [self.shadow copyWithZone: zone];
	return copyLabelOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	_allowOverlap = allowOverlap;
	[self updateNSObject:@"allowOverlap"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setDistance:(NSNumber *)distance {
	_distance = distance;
	[self updateNSObject:@"distance"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setFormat:(NSString *)format {
	_format = format;
	[self updateNSObject:@"format"];
}

-(void)setCrop:(NSNumber *)crop {
	_crop = crop;
	[self updateNSObject:@"crop"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setShape:(NSString *)shape {
	_shape = shape;
	[self updateNSObject:@"shape"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setOverflow:(NSString *)overflow {
	_overflow = overflow;
	[self updateNSObject:@"overflow"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	if(self.formatter) {
		[self removeObserver:self forKeyPath:@"formatter.isUpdated"];
	}
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

@end
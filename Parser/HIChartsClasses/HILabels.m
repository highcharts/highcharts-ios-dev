#import "HIChartsJSONSerializableSubclass.h"
#import "HILabels.h"

@implementation HILabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILabels *copyLabels = [[HILabels allocWithZone: zone] init];
	copyLabels.distance = [self.distance copyWithZone: zone];
	copyLabels.align = [self.align copyWithZone: zone];
	copyLabels.y = [self.y copyWithZone: zone];
	copyLabels.x = [self.x copyWithZone: zone];
	copyLabels.staggerLines = [self.staggerLines copyWithZone: zone];
	copyLabels.autoRotationLimit = [self.autoRotationLimit copyWithZone: zone];
	copyLabels.position3d = [self.position3d copyWithZone: zone];
	copyLabels.rotation = [self.rotation copyWithZone: zone];
	copyLabels.style = [self.style copyWithZone: zone];
	copyLabels.reserveSpace = [self.reserveSpace copyWithZone: zone];
	copyLabels.useHTML = [self.useHTML copyWithZone: zone];
	copyLabels.skew3d = [self.skew3d copyWithZone: zone];
	copyLabels.formatter = [self.formatter copyWithZone: zone];
	copyLabels.autoRotation = [self.autoRotation copyWithZone: zone];
	copyLabels.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyLabels.zIndex = [self.zIndex copyWithZone: zone];
	copyLabels.format = [self.format copyWithZone: zone];
	copyLabels.padding = [self.padding copyWithZone: zone];
	copyLabels.step = [self.step copyWithZone: zone];
	copyLabels.overflow = [self.overflow copyWithZone: zone];
	copyLabels.enabled = [self.enabled copyWithZone: zone];
	copyLabels.point = [self.point copyWithZone: zone];
	copyLabels.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyLabels.borderRadius = [self.borderRadius copyWithZone: zone];
	copyLabels.text = [self.text copyWithZone: zone];
	copyLabels.accessibility = [self.accessibility copyWithZone: zone];
	copyLabels.crop = [self.crop copyWithZone: zone];
	copyLabels.shape = [self.shape copyWithZone: zone];
	copyLabels.borderColor = [self.borderColor copyWithZone: zone];
	copyLabels.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyLabels.shadow = [self.shadow copyWithZone: zone];
	copyLabels.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLabels.className = [self.className copyWithZone: zone];
	copyLabels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLabels.clip = [self.clip copyWithZone: zone];
	return copyLabels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.staggerLines) {
		params[@"staggerLines"] = self.staggerLines;
	}
	if (self.autoRotationLimit) {
		params[@"autoRotationLimit"] = self.autoRotationLimit;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.autoRotation) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.autoRotation) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"autoRotation"] = array;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
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
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	return params;
}

# pragma mark - Setters

-(void)setDistance:(id)distance {
	id oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
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

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setStaggerLines:(NSNumber *)staggerLines {
	NSNumber *oldValue = _staggerLines;
	_staggerLines = staggerLines;
	[self updateNSObject:oldValue newValue:staggerLines propertyName:@"staggerLines"];
}

-(void)setAutoRotationLimit:(NSNumber *)autoRotationLimit {
	NSNumber *oldValue = _autoRotationLimit;
	_autoRotationLimit = autoRotationLimit;
	[self updateNSObject:oldValue newValue:autoRotationLimit propertyName:@"autoRotationLimit"];
}

-(void)setPosition3d:(NSString *)position3d {
	NSString *oldValue = _position3d;
	_position3d = position3d;
	[self updateNSObject:oldValue newValue:position3d propertyName:@"position3d"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setReserveSpace:(NSNumber *)reserveSpace {
	NSNumber *oldValue = _reserveSpace;
	_reserveSpace = reserveSpace;
	[self updateNSObject:oldValue newValue:reserveSpace propertyName:@"reserveSpace"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setSkew3d:(NSNumber *)skew3d {
	NSNumber *oldValue = _skew3d;
	_skew3d = skew3d;
	[self updateNSObject:oldValue newValue:skew3d propertyName:@"skew3d"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setAutoRotation:(NSArray<NSNumber *> *)autoRotation {
	NSArray<NSNumber *> *oldValue = _autoRotation;
	_autoRotation = autoRotation;
	[self updateArrayObject:oldValue newValue:autoRotation propertyName:@"autoRotation"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setPadding:(NSString *)padding {
	NSString *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setStep:(NSNumber *)step {
	NSNumber *oldValue = _step;
	_step = step;
	[self updateNSObject:oldValue newValue:step propertyName:@"step"];
}

-(void)setOverflow:(NSString *)overflow {
	NSString *oldValue = _overflow;
	_overflow = overflow;
	[self updateNSObject:oldValue newValue:overflow propertyName:@"overflow"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setPoint:(HIAnnotationMockPointOptionsObject *)point {
	HIAnnotationMockPointOptionsObject *oldValue = _point;
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

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

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
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

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setShadow:(HIShadowOptionsObject *)shadow {
	HIShadowOptionsObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
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

-(void)setClip:(NSNumber *)clip {
	NSNumber *oldValue = _clip;
	_clip = clip;
	[self updateNSObject:oldValue newValue:clip propertyName:@"clip"];
}

@end
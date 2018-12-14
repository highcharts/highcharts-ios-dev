#import "HIChartsJSONSerializableSubclass.h"
#import "HILabels.h"

@implementation HILabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILabels *copyLabels = [[HILabels allocWithZone: zone] init];
	copyLabels.items = [self.items copyWithZone: zone];
	copyLabels.style = [self.style copyWithZone: zone];
	copyLabels.point = [self.point copyWithZone: zone];
	copyLabels.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyLabels.borderColor = [self.borderColor copyWithZone: zone];
	copyLabels.padding = [self.padding copyWithZone: zone];
	copyLabels.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLabels.distance = [self.distance copyWithZone: zone];
	copyLabels.borderRadius = [self.borderRadius copyWithZone: zone];
	copyLabels.text = [self.text copyWithZone: zone];
	copyLabels.align = [self.align copyWithZone: zone];
	copyLabels.format = [self.format copyWithZone: zone];
	copyLabels.crop = [self.crop copyWithZone: zone];
	copyLabels.useHTML = [self.useHTML copyWithZone: zone];
	copyLabels.className = [self.className copyWithZone: zone];
	copyLabels.shape = [self.shape copyWithZone: zone];
	copyLabels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLabels.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyLabels.y = [self.y copyWithZone: zone];
	copyLabels.x = [self.x copyWithZone: zone];
	copyLabels.overflow = [self.overflow copyWithZone: zone];
	copyLabels.formatter = [self.formatter copyWithZone: zone];
	copyLabels.shadow = [self.shadow copyWithZone: zone];
	copyLabels.staggerLines = [self.staggerLines copyWithZone: zone];
	copyLabels.autoRotationLimit = [self.autoRotationLimit copyWithZone: zone];
	copyLabels.position3d = [self.position3d copyWithZone: zone];
	copyLabels.rotation = [self.rotation copyWithZone: zone];
	copyLabels.reserveSpace = [self.reserveSpace copyWithZone: zone];
	copyLabels.skew3d = [self.skew3d copyWithZone: zone];
	copyLabels.autoRotation = [self.autoRotation copyWithZone: zone];
	copyLabels.zIndex = [self.zIndex copyWithZone: zone];
	copyLabels.step = [self.step copyWithZone: zone];
	copyLabels.enabled = [self.enabled copyWithZone: zone];
	return copyLabels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.items) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.items) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"items"] = array;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
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
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setItems:(NSArray <HIItems *> *)items {
	NSArray <HIItems *> *oldValue = _items;
	_items = items;
	[self updateArrayObject:oldValue newValue:items propertyName:@"items"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setPoint:(HIPoint *)point {
	HIPoint *oldValue = _point;
	if(self.point) {
		[self removeObserver:self forKeyPath:@"point.isUpdated"];
	}
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

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

-(void)setStaggerLines:(NSNumber *)staggerLines {
	_staggerLines = staggerLines;
	[self updateNSObject:@"staggerLines"];
}

-(void)setAutoRotationLimit:(NSNumber *)autoRotationLimit {
	_autoRotationLimit = autoRotationLimit;
	[self updateNSObject:@"autoRotationLimit"];
}

-(void)setPosition3d:(NSString *)position3d {
	_position3d = position3d;
	[self updateNSObject:@"position3d"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setReserveSpace:(NSNumber *)reserveSpace {
	_reserveSpace = reserveSpace;
	[self updateNSObject:@"reserveSpace"];
}

-(void)setSkew3d:(NSNumber *)skew3d {
	_skew3d = skew3d;
	[self updateNSObject:@"skew3d"];
}

-(void)setAutoRotation:(NSArray<NSNumber *> *)autoRotation {
	NSArray<NSNumber *> *oldValue = _autoRotation;
	_autoRotation = autoRotation;
	[self updateArrayObject:oldValue newValue:autoRotation propertyName:@"autoRotation"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setStep:(NSNumber *)step {
	_step = step;
	[self updateNSObject:@"step"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

@end
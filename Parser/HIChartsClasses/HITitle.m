#import "HIChartsJSONSerializableSubclass.h"
#import "HITitle.h"

@implementation HITitle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITitle *copyTitle = [[HITitle allocWithZone: zone] init];
	copyTitle.style = [self.style copyWithZone: zone];
	copyTitle.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyTitle.text = [self.text copyWithZone: zone];
	copyTitle.align = [self.align copyWithZone: zone];
	copyTitle.useHTML = [self.useHTML copyWithZone: zone];
	copyTitle.y = [self.y copyWithZone: zone];
	copyTitle.x = [self.x copyWithZone: zone];
	copyTitle.widthAdjust = [self.widthAdjust copyWithZone: zone];
	copyTitle.margin = [self.margin copyWithZone: zone];
	copyTitle.floating = [self.floating copyWithZone: zone];
	copyTitle.rotation = [self.rotation copyWithZone: zone];
	copyTitle.skew3d = [self.skew3d copyWithZone: zone];
	copyTitle.reserveSpace = [self.reserveSpace copyWithZone: zone];
	copyTitle.position3d = [self.position3d copyWithZone: zone];
	copyTitle.offset = [self.offset copyWithZone: zone];
	copyTitle.textAlign = [self.textAlign copyWithZone: zone];
	return copyTitle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
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

-(void)setWidthAdjust:(NSNumber *)widthAdjust {
	NSNumber *oldValue = _widthAdjust;
	_widthAdjust = widthAdjust;
	[self updateNSObject:oldValue newValue:widthAdjust propertyName:@"widthAdjust"];
}

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setFloating:(NSNumber *)floating {
	NSNumber *oldValue = _floating;
	_floating = floating;
	[self updateNSObject:oldValue newValue:floating propertyName:@"floating"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setSkew3d:(NSNumber *)skew3d {
	NSNumber *oldValue = _skew3d;
	_skew3d = skew3d;
	[self updateNSObject:oldValue newValue:skew3d propertyName:@"skew3d"];
}

-(void)setReserveSpace:(NSNumber *)reserveSpace {
	NSNumber *oldValue = _reserveSpace;
	_reserveSpace = reserveSpace;
	[self updateNSObject:oldValue newValue:reserveSpace propertyName:@"reserveSpace"];
}

-(void)setPosition3d:(NSString *)position3d {
	NSString *oldValue = _position3d;
	_position3d = position3d;
	[self updateNSObject:oldValue newValue:position3d propertyName:@"position3d"];
}

-(void)setOffset:(NSNumber *)offset {
	NSNumber *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setTextAlign:(NSString *)textAlign {
	NSString *oldValue = _textAlign;
	_textAlign = textAlign;
	[self updateNSObject:oldValue newValue:textAlign propertyName:@"textAlign"];
}

@end
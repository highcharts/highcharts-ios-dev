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
	copyTitle.reserveSpace = [self.reserveSpace copyWithZone: zone];
	copyTitle.skew3d = [self.skew3d copyWithZone: zone];
	copyTitle.position3d = [self.position3d copyWithZone: zone];
	copyTitle.offset = [self.offset copyWithZone: zone];
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
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setWidthAdjust:(NSNumber *)widthAdjust {
	_widthAdjust = widthAdjust;
	[self updateNSObject:@"widthAdjust"];
}

-(void)setMargin:(NSNumber *)margin {
	_margin = margin;
	[self updateNSObject:@"margin"];
}

-(void)setFloating:(NSNumber *)floating {
	_floating = floating;
	[self updateNSObject:@"floating"];
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

-(void)setPosition3d:(NSString *)position3d {
	_position3d = position3d;
	[self updateNSObject:@"position3d"];
}

-(void)setOffset:(NSNumber *)offset {
	_offset = offset;
	[self updateNSObject:@"offset"];
}

@end
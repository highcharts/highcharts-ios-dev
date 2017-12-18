#import "HIChartsJSONSerializableSubclass.h"
#import "HITitle.h"

@implementation HITitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	return params;
}

# pragma mark - Setters

-(void)setReserveSpace:(NSNumber *)reserveSpace {
	_reserveSpace = reserveSpace;
	[self updateNSObject:@"reserveSpace"];
}

-(void)setMargin:(NSNumber *)margin {
	_margin = margin;
	[self updateNSObject:@"margin"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setEnabled:(NSString *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setSkew3d:(NSNumber *)skew3d {
	_skew3d = skew3d;
	[self updateNSObject:@"skew3d"];
}

-(void)setOffset:(NSNumber *)offset {
	_offset = offset;
	[self updateNSObject:@"offset"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setPosition3d:(NSString *)position3d {
	_position3d = position3d;
	[self updateNSObject:@"position3d"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setFloating:(NSNumber *)floating {
	_floating = floating;
	[self updateNSObject:@"floating"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setWidthAdjust:(NSNumber *)widthAdjust {
	_widthAdjust = widthAdjust;
	[self updateNSObject:@"widthAdjust"];
}

@end
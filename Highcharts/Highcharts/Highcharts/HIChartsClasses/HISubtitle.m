#import "HIChartsJSONSerializableSubclass.h"
#import "HISubtitle.h"

@implementation HISubtitle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISubtitle *copySubtitle = [[HISubtitle allocWithZone: zone] init];
	copySubtitle.style = [self.style copyWithZone: zone];
	copySubtitle.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copySubtitle.text = [self.text copyWithZone: zone];
	copySubtitle.align = [self.align copyWithZone: zone];
	copySubtitle.y = [self.y copyWithZone: zone];
	copySubtitle.x = [self.x copyWithZone: zone];
	copySubtitle.floating = [self.floating copyWithZone: zone];
	copySubtitle.widthAdjust = [self.widthAdjust copyWithZone: zone];
	copySubtitle.useHTML = [self.useHTML copyWithZone: zone];
	return copySubtitle;
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
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
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

-(void)setFloating:(NSNumber *)floating {
	NSNumber *oldValue = _floating;
	_floating = floating;
	[self updateNSObject:oldValue newValue:floating propertyName:@"floating"];
}

-(void)setWidthAdjust:(NSNumber *)widthAdjust {
	NSNumber *oldValue = _widthAdjust;
	_widthAdjust = widthAdjust;
	[self updateNSObject:oldValue newValue:widthAdjust propertyName:@"widthAdjust"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

@end
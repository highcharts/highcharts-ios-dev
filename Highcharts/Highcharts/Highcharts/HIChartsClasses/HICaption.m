#import "HIChartsJSONSerializableSubclass.h"
#import "HICaption.h"

@implementation HICaption

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICaption *copyCaption = [[HICaption allocWithZone: zone] init];
	copyCaption.style = [self.style copyWithZone: zone];
	copyCaption.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyCaption.text = [self.text copyWithZone: zone];
	copyCaption.align = [self.align copyWithZone: zone];
	copyCaption.y = [self.y copyWithZone: zone];
	copyCaption.x = [self.x copyWithZone: zone];
	copyCaption.floating = [self.floating copyWithZone: zone];
	copyCaption.margin = [self.margin copyWithZone: zone];
	copyCaption.useHTML = [self.useHTML copyWithZone: zone];
	return copyCaption;
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
	if (self.margin) {
		params[@"margin"] = self.margin;
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

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

@end
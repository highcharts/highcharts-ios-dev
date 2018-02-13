#import "HIChartsJSONSerializableSubclass.h"
#import "HISubtitle.h"

@implementation HISubtitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
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
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
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

-(void)setFloating:(NSNumber *)floating {
	_floating = floating;
	[self updateNSObject:@"floating"];
}

@end
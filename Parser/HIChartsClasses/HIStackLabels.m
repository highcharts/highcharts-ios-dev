#import "HIChartsJSONSerializableSubclass.h"
#import "HIStackLabels.h"

@implementation HIStackLabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStackLabels *copyStackLabels = [[HIStackLabels allocWithZone: zone] init];
	copyStackLabels.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyStackLabels.style = [self.style copyWithZone: zone];
	copyStackLabels.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyStackLabels.format = [self.format copyWithZone: zone];
	copyStackLabels.align = [self.align copyWithZone: zone];
	copyStackLabels.enabled = [self.enabled copyWithZone: zone];
	copyStackLabels.useHTML = [self.useHTML copyWithZone: zone];
	copyStackLabels.y = [self.y copyWithZone: zone];
	copyStackLabels.x = [self.x copyWithZone: zone];
	copyStackLabels.rotation = [self.rotation copyWithZone: zone];
	copyStackLabels.formatter = [self.formatter copyWithZone: zone];
	copyStackLabels.textAlign = [self.textAlign copyWithZone: zone];
	return copyStackLabels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
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
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	_allowOverlap = allowOverlap;
	[self updateNSObject:@"allowOverlap"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setFormat:(NSString *)format {
	_format = format;
	[self updateNSObject:@"format"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
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

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	if(self.formatter) {
		[self removeObserver:self forKeyPath:@"formatter.isUpdated"];
	}
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setTextAlign:(NSString *)textAlign {
	_textAlign = textAlign;
	[self updateNSObject:@"textAlign"];
}

@end
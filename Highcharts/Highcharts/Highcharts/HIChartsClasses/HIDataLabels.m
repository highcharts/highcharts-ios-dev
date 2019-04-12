#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataLabels.h"

@implementation HIDataLabels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataLabels *copyDataLabels = [[HIDataLabels allocWithZone: zone] init];
	copyDataLabels.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyDataLabels.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyDataLabels.borderColor = [self.borderColor copyWithZone: zone];
	copyDataLabels.style = [self.style copyWithZone: zone];
	copyDataLabels.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyDataLabels.borderRadius = [self.borderRadius copyWithZone: zone];
	copyDataLabels.alternate = [self.alternate copyWithZone: zone];
	copyDataLabels.enabled = [self.enabled copyWithZone: zone];
	copyDataLabels.color = [self.color copyWithZone: zone];
	copyDataLabels.connectorColor = [self.connectorColor copyWithZone: zone];
	copyDataLabels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDataLabels.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyDataLabels.shadow = [self.shadow copyWithZone: zone];
	copyDataLabels.formatter = [self.formatter copyWithZone: zone];
	copyDataLabels.distance = [self.distance copyWithZone: zone];
	copyDataLabels.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	copyDataLabels.useHTML = [self.useHTML copyWithZone: zone];
	copyDataLabels.align = [self.align copyWithZone: zone];
	copyDataLabels.overflow = [self.overflow copyWithZone: zone];
	copyDataLabels.inside = [self.inside copyWithZone: zone];
	copyDataLabels.crop = [self.crop copyWithZone: zone];
	return copyDataLabels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.alternate) {
		params[@"alternate"] = self.alternate;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.nodeFormatter) {
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	return params;
}

# pragma mark - Setters

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setBorderColor:(NSString *)borderColor {
	NSString *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateNSObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	NSNumber *oldValue = _connectorWidth;
	_connectorWidth = connectorWidth;
	[self updateNSObject:oldValue newValue:connectorWidth propertyName:@"connectorWidth"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setAlternate:(NSNumber *)alternate {
	NSNumber *oldValue = _alternate;
	_alternate = alternate;
	[self updateNSObject:oldValue newValue:alternate propertyName:@"alternate"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setConnectorColor:(NSString *)connectorColor {
	NSString *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateNSObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	NSString *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateNSObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setShadow:(NSNumber *)shadow {
	NSNumber *oldValue = _shadow;
	_shadow = shadow;
	[self updateNSObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setDistance:(NSNumber *)distance {
	NSNumber *oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	_nodeFormatter = nodeFormatter;
	[self updateNSObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setOverflow:(NSString *)overflow {
	NSString *oldValue = _overflow;
	_overflow = overflow;
	[self updateNSObject:oldValue newValue:overflow propertyName:@"overflow"];
}

-(void)setInside:(NSNumber *)inside {
	NSNumber *oldValue = _inside;
	_inside = inside;
	[self updateNSObject:oldValue newValue:inside propertyName:@"inside"];
}

-(void)setCrop:(NSNumber *)crop {
	NSNumber *oldValue = _crop;
	_crop = crop;
	[self updateNSObject:oldValue newValue:crop propertyName:@"crop"];
}

@end

#import "HIChartsJSONSerializableSubclass.h"
#import "HITooltip.h"

@implementation HITooltip

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITooltip *copyTooltip = [[HITooltip allocWithZone: zone] init];
	copyTooltip.followTouchMove = [self.followTouchMove copyWithZone: zone];
	copyTooltip.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTooltip.headerFormat = [self.headerFormat copyWithZone: zone];
	copyTooltip.valueSuffix = [self.valueSuffix copyWithZone: zone];
	copyTooltip.valuePrefix = [self.valuePrefix copyWithZone: zone];
	copyTooltip.positioner = [self.positioner copyWithZone: zone];
	copyTooltip.useHTML = [self.useHTML copyWithZone: zone];
	copyTooltip.borderColor = [self.borderColor copyWithZone: zone];
	copyTooltip.style = [self.style copyWithZone: zone];
	copyTooltip.footerFormat = [self.footerFormat copyWithZone: zone];
	copyTooltip.outside = [self.outside copyWithZone: zone];
	copyTooltip.animation = [self.animation copyWithZone: zone];
	copyTooltip.split = [self.split copyWithZone: zone];
	copyTooltip.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyTooltip.snap = [self.snap copyWithZone: zone];
	copyTooltip.shared = [self.shared copyWithZone: zone];
	copyTooltip.formatter = [self.formatter copyWithZone: zone];
	copyTooltip.pointFormat = [self.pointFormat copyWithZone: zone];
	copyTooltip.xDateFormat = [self.xDateFormat copyWithZone: zone];
	copyTooltip.dateTimeLabelFormats = [self.dateTimeLabelFormats copyWithZone: zone];
	copyTooltip.padding = [self.padding copyWithZone: zone];
	copyTooltip.shadow = [self.shadow copyWithZone: zone];
	copyTooltip.enabled = [self.enabled copyWithZone: zone];
	copyTooltip.shape = [self.shape copyWithZone: zone];
	copyTooltip.pointFormatter = [self.pointFormatter copyWithZone: zone];
	copyTooltip.borderWidth = [self.borderWidth copyWithZone: zone];
	copyTooltip.followPointer = [self.followPointer copyWithZone: zone];
	copyTooltip.hideDelay = [self.hideDelay copyWithZone: zone];
	copyTooltip.valueDecimals = [self.valueDecimals copyWithZone: zone];
	copyTooltip.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	copyTooltip.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copyTooltip.distance = [self.distance copyWithZone: zone];
	return copyTooltip;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.positioner) {
		params[@"positioner"] = [self.positioner getFunction];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.outside) {
		params[@"outside"] = self.outside;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.split) {
		params[@"split"] = self.split;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.shared) {
		params[@"shared"] = self.shared;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = [self.pointFormatter getFunction];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	return params;
}

# pragma mark - Setters

-(void)setFollowTouchMove:(NSNumber *)followTouchMove {
	_followTouchMove = followTouchMove;
	[self updateNSObject:@"followTouchMove"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setHeaderFormat:(NSString *)headerFormat {
	_headerFormat = headerFormat;
	[self updateNSObject:@"headerFormat"];
}

-(void)setValueSuffix:(NSString *)valueSuffix {
	_valueSuffix = valueSuffix;
	[self updateNSObject:@"valueSuffix"];
}

-(void)setValuePrefix:(NSString *)valuePrefix {
	_valuePrefix = valuePrefix;
	[self updateNSObject:@"valuePrefix"];
}

-(void)setPositioner:(HIFunction *)positioner {
	HIFunction *oldValue = _positioner;
	if(self.positioner) {
		[self removeObserver:self forKeyPath:@"positioner.isUpdated"];
	}
	_positioner = positioner;
	[self updateHIObject:oldValue newValue:positioner propertyName:@"positioner"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setFooterFormat:(NSString *)footerFormat {
	_footerFormat = footerFormat;
	[self updateNSObject:@"footerFormat"];
}

-(void)setOutside:(NSNumber *)outside {
	_outside = outside;
	[self updateNSObject:@"outside"];
}

-(void)setAnimation:(NSNumber *)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setSplit:(NSNumber *)split {
	_split = split;
	[self updateNSObject:@"split"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setSnap:(NSNumber *)snap {
	_snap = snap;
	[self updateNSObject:@"snap"];
}

-(void)setShared:(NSNumber *)shared {
	_shared = shared;
	[self updateNSObject:@"shared"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	if(self.formatter) {
		[self removeObserver:self forKeyPath:@"formatter.isUpdated"];
	}
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setPointFormat:(NSString *)pointFormat {
	_pointFormat = pointFormat;
	[self updateNSObject:@"pointFormat"];
}

-(void)setXDateFormat:(NSString *)xDateFormat {
	_xDateFormat = xDateFormat;
	[self updateNSObject:@"xDateFormat"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	if(self.dateTimeLabelFormats) {
		[self removeObserver:self forKeyPath:@"dateTimeLabelFormats.isUpdated"];
	}
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setShadow:(NSNumber *)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setShape:(NSString *)shape {
	_shape = shape;
	[self updateNSObject:@"shape"];
}

-(void)setPointFormatter:(HIFunction *)pointFormatter {
	HIFunction *oldValue = _pointFormatter;
	if(self.pointFormatter) {
		[self removeObserver:self forKeyPath:@"pointFormatter.isUpdated"];
	}
	_pointFormatter = pointFormatter;
	[self updateHIObject:oldValue newValue:pointFormatter propertyName:@"pointFormatter"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setFollowPointer:(NSNumber *)followPointer {
	_followPointer = followPointer;
	[self updateNSObject:@"followPointer"];
}

-(void)setHideDelay:(NSNumber *)hideDelay {
	_hideDelay = hideDelay;
	[self updateNSObject:@"hideDelay"];
}

-(void)setValueDecimals:(NSNumber *)valueDecimals {
	_valueDecimals = valueDecimals;
	[self updateNSObject:@"valueDecimals"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	if(self.nodeFormatter) {
		[self removeObserver:self forKeyPath:@"nodeFormatter.isUpdated"];
	}
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

-(void)setNodeFormat:(NSString *)nodeFormat {
	_nodeFormat = nodeFormat;
	[self updateNSObject:@"nodeFormat"];
}

-(void)setDistance:(NSNumber *)distance {
	_distance = distance;
	[self updateNSObject:@"distance"];
}

@end